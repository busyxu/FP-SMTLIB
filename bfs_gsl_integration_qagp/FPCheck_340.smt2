(declare-fun limit_ack!5144 () (_ BitVec 64))
(declare-fun epsabs_ack!5149 () (_ BitVec 64))
(declare-fun a_ack!5150 () (_ BitVec 64))
(declare-fun x1_ack!5145 () (_ BitVec 64))
(declare-fun x2_ack!5146 () (_ BitVec 64))
(declare-fun x3_ack!5147 () (_ BitVec 64))
(declare-fun b_ack!5148 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5144)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5149)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5145) ((_ to_fp 11 53) a_ack!5150))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5146) ((_ to_fp 11 53) x1_ack!5145))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5147) ((_ to_fp 11 53) x2_ack!5146))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5148) ((_ to_fp 11 53) x3_ack!5147))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5150)
                                   ((_ to_fp 11 53) x1_ack!5145))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5145)
                                   ((_ to_fp 11 53) a_ack!5150)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5150)
                    ((_ to_fp 11 53) x1_ack!5145)))
    a!1)))

(check-sat)
(exit)

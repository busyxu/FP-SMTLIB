(declare-fun limit_ack!5788 () (_ BitVec 64))
(declare-fun epsabs_ack!5793 () (_ BitVec 64))
(declare-fun a_ack!5794 () (_ BitVec 64))
(declare-fun x1_ack!5789 () (_ BitVec 64))
(declare-fun x2_ack!5790 () (_ BitVec 64))
(declare-fun x3_ack!5791 () (_ BitVec 64))
(declare-fun b_ack!5792 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5788)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5793)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5789) ((_ to_fp 11 53) a_ack!5794))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5790) ((_ to_fp 11 53) x1_ack!5789))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5791) ((_ to_fp 11 53) x2_ack!5790))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5792) ((_ to_fp 11 53) x3_ack!5791))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5794)
                                   ((_ to_fp 11 53) x1_ack!5789))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5789)
                                   ((_ to_fp 11 53) a_ack!5794)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5794)
                    ((_ to_fp 11 53) x1_ack!5789)))
    a!1)))

(check-sat)
(exit)

(declare-fun limit_ack!5774 () (_ BitVec 64))
(declare-fun epsabs_ack!5779 () (_ BitVec 64))
(declare-fun a_ack!5780 () (_ BitVec 64))
(declare-fun x1_ack!5775 () (_ BitVec 64))
(declare-fun x2_ack!5776 () (_ BitVec 64))
(declare-fun x3_ack!5777 () (_ BitVec 64))
(declare-fun b_ack!5778 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5774)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5779)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5775) ((_ to_fp 11 53) a_ack!5780))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5776) ((_ to_fp 11 53) x1_ack!5775))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5777) ((_ to_fp 11 53) x2_ack!5776))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5778) ((_ to_fp 11 53) x3_ack!5777))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5780)
                                   ((_ to_fp 11 53) x1_ack!5775))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5775)
                                   ((_ to_fp 11 53) a_ack!5780)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5780)
                    ((_ to_fp 11 53) x1_ack!5775)))
    a!1)))

(check-sat)
(exit)

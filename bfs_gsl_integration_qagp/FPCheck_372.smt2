(declare-fun limit_ack!5592 () (_ BitVec 64))
(declare-fun epsabs_ack!5597 () (_ BitVec 64))
(declare-fun a_ack!5598 () (_ BitVec 64))
(declare-fun x1_ack!5593 () (_ BitVec 64))
(declare-fun x2_ack!5594 () (_ BitVec 64))
(declare-fun x3_ack!5595 () (_ BitVec 64))
(declare-fun b_ack!5596 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5592)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5597)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5593) ((_ to_fp 11 53) a_ack!5598))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5594) ((_ to_fp 11 53) x1_ack!5593))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5595) ((_ to_fp 11 53) x2_ack!5594))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5596) ((_ to_fp 11 53) x3_ack!5595))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5598)
                                   ((_ to_fp 11 53) x1_ack!5593))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5593)
                                   ((_ to_fp 11 53) a_ack!5598)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5598)
                    ((_ to_fp 11 53) x1_ack!5593)))
    a!1)))

(check-sat)
(exit)

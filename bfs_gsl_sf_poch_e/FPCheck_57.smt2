(declare-fun b_ack!212 () (_ BitVec 64))
(declare-fun a_ack!213 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!213) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!213)
               ((_ to_fp 11 53) b_ack!212))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!212))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!213)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!213) ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY (fp.abs ((_ to_fp 11 53) b_ack!212)) (CF_log a_ack!213)))

(check-sat)
(exit)

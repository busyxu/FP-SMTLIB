(declare-fun a_ack!12 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x0020000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!12))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!12)
                       ((_ to_fp 11 53) a_ack!12))
               ((_ to_fp 11 53) a_ack!12))
       ((_ to_fp 11 53) a_ack!12)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!12))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!12)
                       ((_ to_fp 11 53) a_ack!12))
               ((_ to_fp 11 53) a_ack!12))
       ((_ to_fp 11 53) a_ack!12)))
(assert (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a_ack!12))

(check-sat)
(exit)

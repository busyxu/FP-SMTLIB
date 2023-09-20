(declare-fun a_ack!12 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x3e68000000000000)))
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
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!12)
                  ((_ to_fp 11 53) a_ack!12))
          ((_ to_fp 11 53) a_ack!12))
  a_ack!12))

(check-sat)
(exit)

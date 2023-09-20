(declare-fun a_ack!6 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!6) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!6) ((_ to_fp 11 53) #x4010000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!6))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6)
                       ((_ to_fp 11 53) a_ack!6))
               ((_ to_fp 11 53) a_ack!6))
       ((_ to_fp 11 53) a_ack!6)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!6))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6)
                       ((_ to_fp 11 53) a_ack!6))
               ((_ to_fp 11 53) a_ack!6))
       ((_ to_fp 11 53) a_ack!6)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6)
          ((_ to_fp 11 53) a_ack!6))
  #x4020000000000000))

(check-sat)
(exit)

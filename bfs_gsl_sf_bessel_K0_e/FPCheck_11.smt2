(declare-fun a_ack!16 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!16) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!16) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!16))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!16)
                       ((_ to_fp 11 53) a_ack!16))
               ((_ to_fp 11 53) a_ack!16))
       ((_ to_fp 11 53) a_ack!16)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!16))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!16)
                       ((_ to_fp 11 53) a_ack!16))
               ((_ to_fp 11 53) a_ack!16))
       ((_ to_fp 11 53) a_ack!16)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!16)
          ((_ to_fp 11 53) a_ack!16))
  #x3d9d141fcb837472))

(check-sat)
(exit)

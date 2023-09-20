(declare-fun a_ack!15 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!15) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!15) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!15) ((_ to_fp 11 53) #x3e68000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!15))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!15)
                       ((_ to_fp 11 53) a_ack!15))
               ((_ to_fp 11 53) a_ack!15))
       ((_ to_fp 11 53) a_ack!15)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!15))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!15)
                       ((_ to_fp 11 53) a_ack!15))
               ((_ to_fp 11 53) a_ack!15))
       ((_ to_fp 11 53) a_ack!15)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!15)
          ((_ to_fp 11 53) a_ack!15))
  a_ack!15))

(check-sat)
(exit)

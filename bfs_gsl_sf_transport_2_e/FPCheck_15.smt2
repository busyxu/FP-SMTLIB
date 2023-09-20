(declare-fun a_ack!23 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!23) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!23) ((_ to_fp 11 53) #x3e68000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!23))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!23)
                       ((_ to_fp 11 53) a_ack!23))
               ((_ to_fp 11 53) a_ack!23))
       ((_ to_fp 11 53) a_ack!23)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!23))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!23)
                       ((_ to_fp 11 53) a_ack!23))
               ((_ to_fp 11 53) a_ack!23))
       ((_ to_fp 11 53) a_ack!23)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!23)
          ((_ to_fp 11 53) a_ack!23))
  #x4000000000000000))

(check-sat)
(exit)

(declare-fun b_ack!59 () (_ BitVec 64))
(declare-fun a_ack!60 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!59) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!60) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!59) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!59) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!59))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!59)
                       ((_ to_fp 11 53) b_ack!59))
               ((_ to_fp 11 53) b_ack!59))
       ((_ to_fp 11 53) b_ack!59)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!59))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!59)
                       ((_ to_fp 11 53) b_ack!59))
               ((_ to_fp 11 53) b_ack!59))
       ((_ to_fp 11 53) b_ack!59)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!59)
          ((_ to_fp 11 53) b_ack!59))
  #x3d9d141fcb837472))

(check-sat)
(exit)

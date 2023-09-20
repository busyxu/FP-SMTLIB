(declare-fun x1_ack!373 () (_ BitVec 64))
(declare-fun x0_ack!376 () (_ BitVec 64))
(declare-fun x2_ack!374 () (_ BitVec 64))
(declare-fun xx_ack!375 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!376) ((_ to_fp 11 53) x1_ack!373)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!373) ((_ to_fp 11 53) x2_ack!374)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!373)
                       ((_ to_fp 11 53) x0_ack!376))
               ((_ to_fp 11 53) x0_ack!376))
       ((_ to_fp 11 53) x1_ack!373)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!373)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!373)
                       ((_ to_fp 11 53) x0_ack!376)))
       ((_ to_fp 11 53) x0_ack!376)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!374)
                       ((_ to_fp 11 53) x1_ack!373))
               ((_ to_fp 11 53) x1_ack!373))
       ((_ to_fp 11 53) x2_ack!374)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!374)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!374)
                       ((_ to_fp 11 53) x1_ack!373)))
       ((_ to_fp 11 53) x1_ack!373)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!373)
                    ((_ to_fp 11 53) x0_ack!376))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!374)
                    ((_ to_fp 11 53) x1_ack!373))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!375) ((_ to_fp 11 53) x0_ack!376))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!375) ((_ to_fp 11 53) x2_ack!374))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!375) ((_ to_fp 11 53) x0_ack!376))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!375) ((_ to_fp 11 53) x1_ack!373))))
(assert (FPCHECK_FSUB_OVERFLOW x1_ack!373 x0_ack!376))

(check-sat)
(exit)

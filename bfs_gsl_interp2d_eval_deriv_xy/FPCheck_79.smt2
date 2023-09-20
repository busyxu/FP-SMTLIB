(declare-fun x1_ack!916 () (_ BitVec 64))
(declare-fun x0_ack!920 () (_ BitVec 64))
(declare-fun y0_ack!917 () (_ BitVec 64))
(declare-fun x_ack!918 () (_ BitVec 64))
(declare-fun y_ack!919 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!920) ((_ to_fp 11 53) x1_ack!916))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!917) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!918) ((_ to_fp 11 53) x0_ack!920))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!918) ((_ to_fp 11 53) x1_ack!916))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!919) ((_ to_fp 11 53) y0_ack!917))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!919) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!918) ((_ to_fp 11 53) x0_ack!920))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!918) ((_ to_fp 11 53) x1_ack!916)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!919) ((_ to_fp 11 53) y0_ack!917))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!919) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!916)
                       ((_ to_fp 11 53) x0_ack!920))
               ((_ to_fp 11 53) x0_ack!920))
       ((_ to_fp 11 53) x1_ack!916)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!916)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!916)
                       ((_ to_fp 11 53) x0_ack!920)))
       ((_ to_fp 11 53) x0_ack!920)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!917))
               ((_ to_fp 11 53) y0_ack!917))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!917)))
       ((_ to_fp 11 53) y0_ack!917)))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!917))))

(check-sat)
(exit)

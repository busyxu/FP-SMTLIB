(declare-fun x1_ack!87 () (_ BitVec 64))
(declare-fun x0_ack!91 () (_ BitVec 64))
(declare-fun y0_ack!88 () (_ BitVec 64))
(declare-fun x_ack!89 () (_ BitVec 64))
(declare-fun y_ack!90 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!91) ((_ to_fp 11 53) x1_ack!87))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!88) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!89) ((_ to_fp 11 53) x0_ack!91))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!89) ((_ to_fp 11 53) x1_ack!87))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!90) ((_ to_fp 11 53) y0_ack!88))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!90) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!89) ((_ to_fp 11 53) x0_ack!91))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!89) ((_ to_fp 11 53) x1_ack!87))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!90) ((_ to_fp 11 53) y0_ack!88))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!90) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!87)
                       ((_ to_fp 11 53) x0_ack!91))
               ((_ to_fp 11 53) x0_ack!91))
       ((_ to_fp 11 53) x1_ack!87)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!87)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!87)
                       ((_ to_fp 11 53) x0_ack!91)))
       ((_ to_fp 11 53) x0_ack!91)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!88))
               ((_ to_fp 11 53) y0_ack!88))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!88)))
       ((_ to_fp 11 53) y0_ack!88)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!89)
          ((_ to_fp 11 53) x0_ack!91))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!87)
          ((_ to_fp 11 53) x0_ack!91))))

(check-sat)
(exit)

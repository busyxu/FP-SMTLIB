(declare-fun x1_ack!212 () (_ BitVec 64))
(declare-fun x0_ack!217 () (_ BitVec 64))
(declare-fun y0_ack!213 () (_ BitVec 64))
(declare-fun x_ack!215 () (_ BitVec 64))
(declare-fun y_ack!216 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!214 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!217) ((_ to_fp 11 53) x1_ack!212))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!213) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!215) ((_ to_fp 11 53) x0_ack!217))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!215) ((_ to_fp 11 53) x1_ack!212))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!216) ((_ to_fp 11 53) y0_ack!213))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!216) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!215) ((_ to_fp 11 53) x0_ack!217))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!215) ((_ to_fp 11 53) x1_ack!212))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!216) ((_ to_fp 11 53) y0_ack!213))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!216) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!212)
                       ((_ to_fp 11 53) x0_ack!217))
               ((_ to_fp 11 53) x0_ack!217))
       ((_ to_fp 11 53) x1_ack!212)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!212)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!212)
                       ((_ to_fp 11 53) x0_ack!217)))
       ((_ to_fp 11 53) x0_ack!217)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!213))
               ((_ to_fp 11 53) y0_ack!213))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!213)))
       ((_ to_fp 11 53) y0_ack!213)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!216)
                                   ((_ to_fp 11 53) y0_ack!213))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!213))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!1)
    z0_ack!214)))

(check-sat)
(exit)

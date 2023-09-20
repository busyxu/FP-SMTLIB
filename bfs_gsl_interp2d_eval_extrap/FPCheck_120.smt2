(declare-fun x1_ack!1247 () (_ BitVec 64))
(declare-fun x0_ack!1251 () (_ BitVec 64))
(declare-fun y0_ack!1248 () (_ BitVec 64))
(declare-fun x_ack!1249 () (_ BitVec 64))
(declare-fun y_ack!1250 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1251) ((_ to_fp 11 53) x1_ack!1247))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1248) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1249) ((_ to_fp 11 53) x0_ack!1251))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1249) ((_ to_fp 11 53) x1_ack!1247))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1250) ((_ to_fp 11 53) y0_ack!1248))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1250) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1247)
                       ((_ to_fp 11 53) x0_ack!1251))
               ((_ to_fp 11 53) x0_ack!1251))
       ((_ to_fp 11 53) x1_ack!1247)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1247)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1247)
                       ((_ to_fp 11 53) x0_ack!1251)))
       ((_ to_fp 11 53) x0_ack!1251)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1248))
               ((_ to_fp 11 53) y0_ack!1248))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1248)))
       ((_ to_fp 11 53) y0_ack!1248)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1249)
          ((_ to_fp 11 53) x0_ack!1251))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1247)
          ((_ to_fp 11 53) x0_ack!1251))))

(check-sat)
(exit)

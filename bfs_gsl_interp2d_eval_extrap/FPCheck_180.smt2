(declare-fun x1_ack!1802 () (_ BitVec 64))
(declare-fun x0_ack!1806 () (_ BitVec 64))
(declare-fun y0_ack!1803 () (_ BitVec 64))
(declare-fun x_ack!1804 () (_ BitVec 64))
(declare-fun y_ack!1805 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1806) ((_ to_fp 11 53) x1_ack!1802))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1803) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1804) ((_ to_fp 11 53) x0_ack!1806))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1804) ((_ to_fp 11 53) x1_ack!1802)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1805) ((_ to_fp 11 53) y0_ack!1803))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1805) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1802)
                       ((_ to_fp 11 53) x0_ack!1806))
               ((_ to_fp 11 53) x0_ack!1806))
       ((_ to_fp 11 53) x1_ack!1802)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1802)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1802)
                       ((_ to_fp 11 53) x0_ack!1806)))
       ((_ to_fp 11 53) x0_ack!1806)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1805)
                       ((_ to_fp 11 53) y0_ack!1803))
               ((_ to_fp 11 53) y0_ack!1803))
       ((_ to_fp 11 53) y_ack!1805)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1805)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1805)
                       ((_ to_fp 11 53) y0_ack!1803)))
       ((_ to_fp 11 53) y0_ack!1803)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!1805)
                  ((_ to_fp 11 53) y0_ack!1803))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!1803)))))

(check-sat)
(exit)

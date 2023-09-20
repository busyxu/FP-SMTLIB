(declare-fun x1_ack!2024 () (_ BitVec 64))
(declare-fun x0_ack!2028 () (_ BitVec 64))
(declare-fun y0_ack!2025 () (_ BitVec 64))
(declare-fun x_ack!2026 () (_ BitVec 64))
(declare-fun y_ack!2027 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2028) ((_ to_fp 11 53) x1_ack!2024))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2025) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2026) ((_ to_fp 11 53) x0_ack!2028))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2026) ((_ to_fp 11 53) x1_ack!2024)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2027) ((_ to_fp 11 53) y0_ack!2025))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2027) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2024)
                       ((_ to_fp 11 53) x0_ack!2028))
               ((_ to_fp 11 53) x0_ack!2028))
       ((_ to_fp 11 53) x1_ack!2024)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2024)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2024)
                       ((_ to_fp 11 53) x0_ack!2028)))
       ((_ to_fp 11 53) x0_ack!2028)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2027)
                       ((_ to_fp 11 53) y0_ack!2025))
               ((_ to_fp 11 53) y0_ack!2025))
       ((_ to_fp 11 53) y_ack!2027)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2027)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2027)
                       ((_ to_fp 11 53) y0_ack!2025)))
       ((_ to_fp 11 53) y0_ack!2025)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2026)
                  ((_ to_fp 11 53) x0_ack!2028))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2024)
                  ((_ to_fp 11 53) x0_ack!2028)))))

(check-sat)
(exit)

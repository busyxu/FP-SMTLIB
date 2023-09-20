(declare-fun x1_ack!2501 () (_ BitVec 64))
(declare-fun x0_ack!2505 () (_ BitVec 64))
(declare-fun y0_ack!2502 () (_ BitVec 64))
(declare-fun x_ack!2503 () (_ BitVec 64))
(declare-fun y_ack!2504 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2505) ((_ to_fp 11 53) x1_ack!2501))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2502) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2503) ((_ to_fp 11 53) x0_ack!2505))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2503) ((_ to_fp 11 53) x1_ack!2501))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2504) ((_ to_fp 11 53) y0_ack!2502)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2501)
                       ((_ to_fp 11 53) x0_ack!2505))
               ((_ to_fp 11 53) x0_ack!2505))
       ((_ to_fp 11 53) x1_ack!2501)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2501)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2501)
                       ((_ to_fp 11 53) x0_ack!2505)))
       ((_ to_fp 11 53) x0_ack!2505)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2502))
               ((_ to_fp 11 53) y0_ack!2502))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2502)))
       ((_ to_fp 11 53) y0_ack!2502)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!2504)
                  ((_ to_fp 11 53) y0_ack!2502))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!2502)))))

(check-sat)
(exit)

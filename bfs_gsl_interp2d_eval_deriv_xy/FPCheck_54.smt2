(declare-fun x1_ack!597 () (_ BitVec 64))
(declare-fun x0_ack!601 () (_ BitVec 64))
(declare-fun y0_ack!598 () (_ BitVec 64))
(declare-fun x_ack!599 () (_ BitVec 64))
(declare-fun y_ack!600 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!601) ((_ to_fp 11 53) x1_ack!597))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!598) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!599) ((_ to_fp 11 53) x0_ack!601))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!599) ((_ to_fp 11 53) x1_ack!597))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!600) ((_ to_fp 11 53) y0_ack!598))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!600) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!599) ((_ to_fp 11 53) x0_ack!601))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!599) ((_ to_fp 11 53) x1_ack!597))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!600) ((_ to_fp 11 53) y0_ack!598))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!600) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!597)
                       ((_ to_fp 11 53) x0_ack!601))
               ((_ to_fp 11 53) x0_ack!601))
       ((_ to_fp 11 53) x1_ack!597)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!597)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!597)
                       ((_ to_fp 11 53) x0_ack!601)))
       ((_ to_fp 11 53) x0_ack!601)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!598))
               ((_ to_fp 11 53) y0_ack!598))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!598)))
       ((_ to_fp 11 53) y0_ack!598)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!598))))

(check-sat)
(exit)

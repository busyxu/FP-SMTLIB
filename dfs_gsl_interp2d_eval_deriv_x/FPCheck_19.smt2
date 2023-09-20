(declare-fun x1_ack!172 () (_ BitVec 64))
(declare-fun x0_ack!176 () (_ BitVec 64))
(declare-fun y0_ack!173 () (_ BitVec 64))
(declare-fun x_ack!174 () (_ BitVec 64))
(declare-fun y_ack!175 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!176) ((_ to_fp 11 53) x1_ack!172))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!173) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!174) ((_ to_fp 11 53) x0_ack!176))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!174) ((_ to_fp 11 53) x1_ack!172))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!175) ((_ to_fp 11 53) y0_ack!173))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!175) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!174) ((_ to_fp 11 53) x0_ack!176))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!174) ((_ to_fp 11 53) x1_ack!172))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!175) ((_ to_fp 11 53) y0_ack!173))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!175) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!172)
                       ((_ to_fp 11 53) x0_ack!176))
               ((_ to_fp 11 53) x0_ack!176))
       ((_ to_fp 11 53) x1_ack!172)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!172)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!172)
                       ((_ to_fp 11 53) x0_ack!176)))
       ((_ to_fp 11 53) x0_ack!176)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!173))
               ((_ to_fp 11 53) y0_ack!173))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!173)))
       ((_ to_fp 11 53) y0_ack!173)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!175)
                  ((_ to_fp 11 53) y0_ack!173))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!173)))))

(check-sat)
(exit)

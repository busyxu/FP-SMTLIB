(declare-fun x1_ack!2079 () (_ BitVec 64))
(declare-fun x0_ack!2083 () (_ BitVec 64))
(declare-fun y0_ack!2080 () (_ BitVec 64))
(declare-fun x_ack!2081 () (_ BitVec 64))
(declare-fun y_ack!2082 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2083) ((_ to_fp 11 53) x1_ack!2079))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2080) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2081) ((_ to_fp 11 53) x0_ack!2083))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2081) ((_ to_fp 11 53) x1_ack!2079)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2082) ((_ to_fp 11 53) y0_ack!2080))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2082) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2079)
                       ((_ to_fp 11 53) x0_ack!2083))
               ((_ to_fp 11 53) x0_ack!2083))
       ((_ to_fp 11 53) x1_ack!2079)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2079)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2079)
                       ((_ to_fp 11 53) x0_ack!2083)))
       ((_ to_fp 11 53) x0_ack!2083)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2082)
                       ((_ to_fp 11 53) y0_ack!2080))
               ((_ to_fp 11 53) y0_ack!2080))
       ((_ to_fp 11 53) y_ack!2082)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2082)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2082)
                       ((_ to_fp 11 53) y0_ack!2080)))
       ((_ to_fp 11 53) y0_ack!2080)))

(check-sat)
(exit)

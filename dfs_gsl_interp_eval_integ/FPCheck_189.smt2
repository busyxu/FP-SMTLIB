(declare-fun x1_ack!2217 () (_ BitVec 64))
(declare-fun x0_ack!2221 () (_ BitVec 64))
(declare-fun x2_ack!2218 () (_ BitVec 64))
(declare-fun b_ack!2220 () (_ BitVec 64))
(declare-fun a_ack!2219 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2221) ((_ to_fp 11 53) x1_ack!2217)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2217) ((_ to_fp 11 53) x2_ack!2218)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2217)
                       ((_ to_fp 11 53) x0_ack!2221))
               ((_ to_fp 11 53) x0_ack!2221))
       ((_ to_fp 11 53) x1_ack!2217)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2217)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2217)
                       ((_ to_fp 11 53) x0_ack!2221)))
       ((_ to_fp 11 53) x0_ack!2221)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2218)
                       ((_ to_fp 11 53) x1_ack!2217))
               ((_ to_fp 11 53) x1_ack!2217))
       ((_ to_fp 11 53) x2_ack!2218)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2218)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2218)
                       ((_ to_fp 11 53) x1_ack!2217)))
       ((_ to_fp 11 53) x1_ack!2217)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2217)
                    ((_ to_fp 11 53) x0_ack!2221))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2218)
                    ((_ to_fp 11 53) x1_ack!2217))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2219) ((_ to_fp 11 53) b_ack!2220))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2219) ((_ to_fp 11 53) x0_ack!2221))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2220) ((_ to_fp 11 53) x2_ack!2218))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2219) ((_ to_fp 11 53) b_ack!2220))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2219) ((_ to_fp 11 53) x0_ack!2221))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2219) ((_ to_fp 11 53) x1_ack!2217))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2220) ((_ to_fp 11 53) x0_ack!2221))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2220) ((_ to_fp 11 53) x1_ack!2217)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2217) ((_ to_fp 11 53) b_ack!2220))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2217)
                    ((_ to_fp 11 53) x0_ack!2221))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2218)
                    ((_ to_fp 11 53) x1_ack!2217))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW x1_ack!2217 x1_ack!2217))

(check-sat)
(exit)

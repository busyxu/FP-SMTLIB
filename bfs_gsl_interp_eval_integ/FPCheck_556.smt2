(declare-fun x1_ack!7038 () (_ BitVec 64))
(declare-fun x0_ack!7042 () (_ BitVec 64))
(declare-fun x2_ack!7039 () (_ BitVec 64))
(declare-fun b_ack!7041 () (_ BitVec 64))
(declare-fun a_ack!7040 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7042) ((_ to_fp 11 53) x1_ack!7038)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7038) ((_ to_fp 11 53) x2_ack!7039)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7038)
                       ((_ to_fp 11 53) x0_ack!7042))
               ((_ to_fp 11 53) x0_ack!7042))
       ((_ to_fp 11 53) x1_ack!7038)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7038)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7038)
                       ((_ to_fp 11 53) x0_ack!7042)))
       ((_ to_fp 11 53) x0_ack!7042)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7039)
                       ((_ to_fp 11 53) x1_ack!7038))
               ((_ to_fp 11 53) x1_ack!7038))
       ((_ to_fp 11 53) x2_ack!7039)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7039)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7039)
                       ((_ to_fp 11 53) x1_ack!7038)))
       ((_ to_fp 11 53) x1_ack!7038)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7038)
                    ((_ to_fp 11 53) x0_ack!7042))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7039)
                    ((_ to_fp 11 53) x1_ack!7038))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7040) ((_ to_fp 11 53) b_ack!7041))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7040) ((_ to_fp 11 53) x0_ack!7042))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7041) ((_ to_fp 11 53) x2_ack!7039))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7040) ((_ to_fp 11 53) b_ack!7041))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7040) ((_ to_fp 11 53) x0_ack!7042))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7040) ((_ to_fp 11 53) x1_ack!7038))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7041) ((_ to_fp 11 53) x0_ack!7042))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7041) ((_ to_fp 11 53) x1_ack!7038)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7038) ((_ to_fp 11 53) b_ack!7041))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7038)
                    ((_ to_fp 11 53) x0_ack!7042))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7039)
                    ((_ to_fp 11 53) x1_ack!7038))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW x1_ack!7038 x1_ack!7038))

(check-sat)
(exit)

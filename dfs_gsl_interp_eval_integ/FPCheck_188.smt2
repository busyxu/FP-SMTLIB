(declare-fun x1_ack!2212 () (_ BitVec 64))
(declare-fun x0_ack!2216 () (_ BitVec 64))
(declare-fun x2_ack!2213 () (_ BitVec 64))
(declare-fun b_ack!2215 () (_ BitVec 64))
(declare-fun a_ack!2214 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2216) ((_ to_fp 11 53) x1_ack!2212)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2212) ((_ to_fp 11 53) x2_ack!2213)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2212)
                       ((_ to_fp 11 53) x0_ack!2216))
               ((_ to_fp 11 53) x0_ack!2216))
       ((_ to_fp 11 53) x1_ack!2212)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2212)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2212)
                       ((_ to_fp 11 53) x0_ack!2216)))
       ((_ to_fp 11 53) x0_ack!2216)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2213)
                       ((_ to_fp 11 53) x1_ack!2212))
               ((_ to_fp 11 53) x1_ack!2212))
       ((_ to_fp 11 53) x2_ack!2213)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2213)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2213)
                       ((_ to_fp 11 53) x1_ack!2212)))
       ((_ to_fp 11 53) x1_ack!2212)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2212)
                    ((_ to_fp 11 53) x0_ack!2216))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2213)
                    ((_ to_fp 11 53) x1_ack!2212))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2214) ((_ to_fp 11 53) b_ack!2215))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2214) ((_ to_fp 11 53) x0_ack!2216))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2215) ((_ to_fp 11 53) x2_ack!2213))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2214) ((_ to_fp 11 53) b_ack!2215))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2214) ((_ to_fp 11 53) x0_ack!2216))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2214) ((_ to_fp 11 53) x1_ack!2212))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2215) ((_ to_fp 11 53) x0_ack!2216))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2215) ((_ to_fp 11 53) x1_ack!2212)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2212) ((_ to_fp 11 53) b_ack!2215))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2212)
                    ((_ to_fp 11 53) x0_ack!2216))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2213)
                    ((_ to_fp 11 53) x1_ack!2212))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW x1_ack!2212 x1_ack!2212))

(check-sat)
(exit)

(declare-fun x1_ack!937 () (_ BitVec 64))
(declare-fun x0_ack!941 () (_ BitVec 64))
(declare-fun x2_ack!938 () (_ BitVec 64))
(declare-fun b_ack!940 () (_ BitVec 64))
(declare-fun a_ack!939 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!941) ((_ to_fp 11 53) x1_ack!937)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!937) ((_ to_fp 11 53) x2_ack!938)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!937)
                       ((_ to_fp 11 53) x0_ack!941))
               ((_ to_fp 11 53) x0_ack!941))
       ((_ to_fp 11 53) x1_ack!937)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!937)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!937)
                       ((_ to_fp 11 53) x0_ack!941)))
       ((_ to_fp 11 53) x0_ack!941)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!938)
                       ((_ to_fp 11 53) x1_ack!937))
               ((_ to_fp 11 53) x1_ack!937))
       ((_ to_fp 11 53) x2_ack!938)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!938)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!938)
                       ((_ to_fp 11 53) x1_ack!937)))
       ((_ to_fp 11 53) x1_ack!937)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!937)
                    ((_ to_fp 11 53) x0_ack!941))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!938)
                    ((_ to_fp 11 53) x1_ack!937))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!939) ((_ to_fp 11 53) b_ack!940))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!939) ((_ to_fp 11 53) x0_ack!941))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!940) ((_ to_fp 11 53) x2_ack!938))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!939) ((_ to_fp 11 53) b_ack!940))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!939) ((_ to_fp 11 53) x0_ack!941))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!939) ((_ to_fp 11 53) x1_ack!937))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!940) ((_ to_fp 11 53) x0_ack!941))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!940) ((_ to_fp 11 53) x1_ack!937)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!937) ((_ to_fp 11 53) b_ack!940))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!937)
                    ((_ to_fp 11 53) x0_ack!941))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW x1_ack!937 x0_ack!941))

(check-sat)
(exit)

(declare-fun x1_ack!2484 () (_ BitVec 64))
(declare-fun x0_ack!2488 () (_ BitVec 64))
(declare-fun x2_ack!2485 () (_ BitVec 64))
(declare-fun b_ack!2487 () (_ BitVec 64))
(declare-fun a_ack!2486 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2488) ((_ to_fp 11 53) x1_ack!2484)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2484) ((_ to_fp 11 53) x2_ack!2485)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2484)
                       ((_ to_fp 11 53) x0_ack!2488))
               ((_ to_fp 11 53) x0_ack!2488))
       ((_ to_fp 11 53) x1_ack!2484)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2484)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2484)
                       ((_ to_fp 11 53) x0_ack!2488)))
       ((_ to_fp 11 53) x0_ack!2488)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2485)
                       ((_ to_fp 11 53) x1_ack!2484))
               ((_ to_fp 11 53) x1_ack!2484))
       ((_ to_fp 11 53) x2_ack!2485)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2485)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2485)
                       ((_ to_fp 11 53) x1_ack!2484)))
       ((_ to_fp 11 53) x1_ack!2484)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2484)
                    ((_ to_fp 11 53) x0_ack!2488))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2485)
                    ((_ to_fp 11 53) x1_ack!2484))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2486) ((_ to_fp 11 53) b_ack!2487))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2486) ((_ to_fp 11 53) x0_ack!2488))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2487) ((_ to_fp 11 53) x2_ack!2485))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2486) ((_ to_fp 11 53) b_ack!2487))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2486) ((_ to_fp 11 53) x0_ack!2488))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2486) ((_ to_fp 11 53) x1_ack!2484)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2484) ((_ to_fp 11 53) a_ack!2486))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2487) ((_ to_fp 11 53) x1_ack!2484))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2487) ((_ to_fp 11 53) x2_ack!2485))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2485)
                    ((_ to_fp 11 53) x1_ack!2484))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!2487 x1_ack!2484))

(check-sat)
(exit)

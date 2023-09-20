(declare-fun x1_ack!6511 () (_ BitVec 64))
(declare-fun x0_ack!6517 () (_ BitVec 64))
(declare-fun x2_ack!6512 () (_ BitVec 64))
(declare-fun b_ack!6516 () (_ BitVec 64))
(declare-fun a_ack!6515 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!6513 () (_ BitVec 64))
(declare-fun y2_ack!6514 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6517) ((_ to_fp 11 53) x1_ack!6511)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6511) ((_ to_fp 11 53) x2_ack!6512)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6511)
                       ((_ to_fp 11 53) x0_ack!6517))
               ((_ to_fp 11 53) x0_ack!6517))
       ((_ to_fp 11 53) x1_ack!6511)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6511)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6511)
                       ((_ to_fp 11 53) x0_ack!6517)))
       ((_ to_fp 11 53) x0_ack!6517)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6512)
                       ((_ to_fp 11 53) x1_ack!6511))
               ((_ to_fp 11 53) x1_ack!6511))
       ((_ to_fp 11 53) x2_ack!6512)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6512)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6512)
                       ((_ to_fp 11 53) x1_ack!6511)))
       ((_ to_fp 11 53) x1_ack!6511)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6511)
                    ((_ to_fp 11 53) x0_ack!6517))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6512)
                    ((_ to_fp 11 53) x1_ack!6511))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6515) ((_ to_fp 11 53) b_ack!6516))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6515) ((_ to_fp 11 53) x0_ack!6517))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6516) ((_ to_fp 11 53) x2_ack!6512))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6515) ((_ to_fp 11 53) b_ack!6516))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6515) ((_ to_fp 11 53) x0_ack!6517))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6515) ((_ to_fp 11 53) x1_ack!6511))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6516) ((_ to_fp 11 53) x0_ack!6517))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6516) ((_ to_fp 11 53) x1_ack!6511)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6511) ((_ to_fp 11 53) b_ack!6516))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6511)
                    ((_ to_fp 11 53) x0_ack!6517))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW y2_ack!6514 y1_ack!6513))

(check-sat)
(exit)

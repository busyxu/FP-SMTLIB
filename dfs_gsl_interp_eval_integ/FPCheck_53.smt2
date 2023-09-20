(declare-fun x1_ack!472 () (_ BitVec 64))
(declare-fun x0_ack!478 () (_ BitVec 64))
(declare-fun x2_ack!473 () (_ BitVec 64))
(declare-fun b_ack!477 () (_ BitVec 64))
(declare-fun a_ack!476 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!474 () (_ BitVec 64))
(declare-fun y1_ack!475 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!478) ((_ to_fp 11 53) x1_ack!472)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!472) ((_ to_fp 11 53) x2_ack!473)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!472)
                       ((_ to_fp 11 53) x0_ack!478))
               ((_ to_fp 11 53) x0_ack!478))
       ((_ to_fp 11 53) x1_ack!472)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!472)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!472)
                       ((_ to_fp 11 53) x0_ack!478)))
       ((_ to_fp 11 53) x0_ack!478)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!473)
                       ((_ to_fp 11 53) x1_ack!472))
               ((_ to_fp 11 53) x1_ack!472))
       ((_ to_fp 11 53) x2_ack!473)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!473)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!473)
                       ((_ to_fp 11 53) x1_ack!472)))
       ((_ to_fp 11 53) x1_ack!472)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!472)
                    ((_ to_fp 11 53) x0_ack!478))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!473)
                    ((_ to_fp 11 53) x1_ack!472))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!476) ((_ to_fp 11 53) b_ack!477))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!476) ((_ to_fp 11 53) x0_ack!478))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!477) ((_ to_fp 11 53) x2_ack!473))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!476) ((_ to_fp 11 53) b_ack!477))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!476) ((_ to_fp 11 53) x0_ack!478))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!476) ((_ to_fp 11 53) x1_ack!472))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!477) ((_ to_fp 11 53) x0_ack!478))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!477) ((_ to_fp 11 53) x1_ack!472)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!472) ((_ to_fp 11 53) b_ack!477))))
(assert (FPCHECK_FSUB_UNDERFLOW y1_ack!475 y0_ack!474))

(check-sat)
(exit)

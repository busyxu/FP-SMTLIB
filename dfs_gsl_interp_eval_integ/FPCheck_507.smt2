(declare-fun x1_ack!6361 () (_ BitVec 64))
(declare-fun x0_ack!6365 () (_ BitVec 64))
(declare-fun x2_ack!6362 () (_ BitVec 64))
(declare-fun b_ack!6364 () (_ BitVec 64))
(declare-fun a_ack!6363 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6365) ((_ to_fp 11 53) x1_ack!6361)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6361) ((_ to_fp 11 53) x2_ack!6362)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6361)
                       ((_ to_fp 11 53) x0_ack!6365))
               ((_ to_fp 11 53) x0_ack!6365))
       ((_ to_fp 11 53) x1_ack!6361)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6361)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6361)
                       ((_ to_fp 11 53) x0_ack!6365)))
       ((_ to_fp 11 53) x0_ack!6365)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6362)
                       ((_ to_fp 11 53) x1_ack!6361))
               ((_ to_fp 11 53) x1_ack!6361))
       ((_ to_fp 11 53) x2_ack!6362)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6362)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6362)
                       ((_ to_fp 11 53) x1_ack!6361)))
       ((_ to_fp 11 53) x1_ack!6361)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6361)
                    ((_ to_fp 11 53) x0_ack!6365))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6362)
                    ((_ to_fp 11 53) x1_ack!6361))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6363) ((_ to_fp 11 53) b_ack!6364))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6363) ((_ to_fp 11 53) x0_ack!6365))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6364) ((_ to_fp 11 53) x2_ack!6362))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6363) ((_ to_fp 11 53) b_ack!6364))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6363) ((_ to_fp 11 53) x0_ack!6365))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6363) ((_ to_fp 11 53) x1_ack!6361)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6361) ((_ to_fp 11 53) a_ack!6363))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6364) ((_ to_fp 11 53) x1_ack!6361))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6364) ((_ to_fp 11 53) x2_ack!6362))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6362)
                    ((_ to_fp 11 53) x1_ack!6361))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!6363 x1_ack!6361))

(check-sat)
(exit)

(declare-fun x1_ack!7524 () (_ BitVec 64))
(declare-fun x0_ack!7528 () (_ BitVec 64))
(declare-fun x2_ack!7525 () (_ BitVec 64))
(declare-fun b_ack!7527 () (_ BitVec 64))
(declare-fun a_ack!7526 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7528) ((_ to_fp 11 53) x1_ack!7524)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7524) ((_ to_fp 11 53) x2_ack!7525)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7524)
                       ((_ to_fp 11 53) x0_ack!7528))
               ((_ to_fp 11 53) x0_ack!7528))
       ((_ to_fp 11 53) x1_ack!7524)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7524)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7524)
                       ((_ to_fp 11 53) x0_ack!7528)))
       ((_ to_fp 11 53) x0_ack!7528)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7525)
                       ((_ to_fp 11 53) x1_ack!7524))
               ((_ to_fp 11 53) x1_ack!7524))
       ((_ to_fp 11 53) x2_ack!7525)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7525)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7525)
                       ((_ to_fp 11 53) x1_ack!7524)))
       ((_ to_fp 11 53) x1_ack!7524)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7524)
                    ((_ to_fp 11 53) x0_ack!7528))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7525)
                    ((_ to_fp 11 53) x1_ack!7524))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7526) ((_ to_fp 11 53) b_ack!7527))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7526) ((_ to_fp 11 53) x0_ack!7528))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7527) ((_ to_fp 11 53) x2_ack!7525))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7526) ((_ to_fp 11 53) b_ack!7527))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7526) ((_ to_fp 11 53) x0_ack!7528))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7526) ((_ to_fp 11 53) x1_ack!7524))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7527) ((_ to_fp 11 53) x0_ack!7528)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7524)
                    ((_ to_fp 11 53) x0_ack!7528))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)

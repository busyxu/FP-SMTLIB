(declare-fun x1_ack!4524 () (_ BitVec 64))
(declare-fun x0_ack!4528 () (_ BitVec 64))
(declare-fun x2_ack!4525 () (_ BitVec 64))
(declare-fun b_ack!4527 () (_ BitVec 64))
(declare-fun a_ack!4526 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4528) ((_ to_fp 11 53) x1_ack!4524)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4524) ((_ to_fp 11 53) x2_ack!4525)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4524)
                       ((_ to_fp 11 53) x0_ack!4528))
               ((_ to_fp 11 53) x0_ack!4528))
       ((_ to_fp 11 53) x1_ack!4524)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4524)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4524)
                       ((_ to_fp 11 53) x0_ack!4528)))
       ((_ to_fp 11 53) x0_ack!4528)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4525)
                       ((_ to_fp 11 53) x1_ack!4524))
               ((_ to_fp 11 53) x1_ack!4524))
       ((_ to_fp 11 53) x2_ack!4525)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4525)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4525)
                       ((_ to_fp 11 53) x1_ack!4524)))
       ((_ to_fp 11 53) x1_ack!4524)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4524)
                    ((_ to_fp 11 53) x0_ack!4528))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4525)
                    ((_ to_fp 11 53) x1_ack!4524))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4526) ((_ to_fp 11 53) b_ack!4527))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4526) ((_ to_fp 11 53) x0_ack!4528))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4527) ((_ to_fp 11 53) x2_ack!4525))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4526) ((_ to_fp 11 53) b_ack!4527))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4526) ((_ to_fp 11 53) x0_ack!4528))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4526) ((_ to_fp 11 53) x1_ack!4524)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4524) ((_ to_fp 11 53) a_ack!4526))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4527) ((_ to_fp 11 53) x1_ack!4524))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4527) ((_ to_fp 11 53) x2_ack!4525)))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) x2_ack!4525)
                               ((_ to_fp 11 53) x1_ack!4524))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)

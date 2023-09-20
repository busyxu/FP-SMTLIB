(declare-fun x1_ack!4522 () (_ BitVec 64))
(declare-fun x0_ack!4526 () (_ BitVec 64))
(declare-fun y0_ack!4523 () (_ BitVec 64))
(declare-fun x_ack!4524 () (_ BitVec 64))
(declare-fun y_ack!4525 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4526) ((_ to_fp 11 53) x1_ack!4522))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4523) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4524) ((_ to_fp 11 53) x0_ack!4526))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4524) ((_ to_fp 11 53) x1_ack!4522))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4525) ((_ to_fp 11 53) y0_ack!4523)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4522)
                       ((_ to_fp 11 53) x0_ack!4526))
               ((_ to_fp 11 53) x0_ack!4526))
       ((_ to_fp 11 53) x1_ack!4522)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4522)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4522)
                       ((_ to_fp 11 53) x0_ack!4526)))
       ((_ to_fp 11 53) x0_ack!4526)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4523))
               ((_ to_fp 11 53) y0_ack!4523))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4523)))
       ((_ to_fp 11 53) y0_ack!4523)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4525)
                           ((_ to_fp 11 53) y0_ack!4523))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4523)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4525)
                           ((_ to_fp 11 53) y0_ack!4523))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4523)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!4525)
                  ((_ to_fp 11 53) y0_ack!4523))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!4523)))))

(check-sat)
(exit)

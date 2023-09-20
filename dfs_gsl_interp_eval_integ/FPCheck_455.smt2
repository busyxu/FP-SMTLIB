(declare-fun x1_ack!5626 () (_ BitVec 64))
(declare-fun x0_ack!5630 () (_ BitVec 64))
(declare-fun x2_ack!5627 () (_ BitVec 64))
(declare-fun b_ack!5629 () (_ BitVec 64))
(declare-fun a_ack!5628 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5630) ((_ to_fp 11 53) x1_ack!5626)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5626) ((_ to_fp 11 53) x2_ack!5627)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5626)
                       ((_ to_fp 11 53) x0_ack!5630))
               ((_ to_fp 11 53) x0_ack!5630))
       ((_ to_fp 11 53) x1_ack!5626)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5626)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5626)
                       ((_ to_fp 11 53) x0_ack!5630)))
       ((_ to_fp 11 53) x0_ack!5630)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5627)
                       ((_ to_fp 11 53) x1_ack!5626))
               ((_ to_fp 11 53) x1_ack!5626))
       ((_ to_fp 11 53) x2_ack!5627)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5627)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5627)
                       ((_ to_fp 11 53) x1_ack!5626)))
       ((_ to_fp 11 53) x1_ack!5626)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5626)
                    ((_ to_fp 11 53) x0_ack!5630))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5627)
                    ((_ to_fp 11 53) x1_ack!5626))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5628) ((_ to_fp 11 53) b_ack!5629))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5628) ((_ to_fp 11 53) x0_ack!5630))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5629) ((_ to_fp 11 53) x2_ack!5627))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5628) ((_ to_fp 11 53) b_ack!5629))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5628) ((_ to_fp 11 53) x0_ack!5630))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5628) ((_ to_fp 11 53) x1_ack!5626)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5626) ((_ to_fp 11 53) a_ack!5628))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5629) ((_ to_fp 11 53) x1_ack!5626))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5629) ((_ to_fp 11 53) x2_ack!5627)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5627)
                    ((_ to_fp 11 53) x1_ack!5626))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5628)
                       ((_ to_fp 11 53) x1_ack!5626))
               ((_ to_fp 11 53) x1_ack!5626))
       ((_ to_fp 11 53) a_ack!5628)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5628)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5628)
                       ((_ to_fp 11 53) x1_ack!5626)))
       ((_ to_fp 11 53) x1_ack!5626)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5628)
                                  ((_ to_fp 11 53) x1_ack!5626)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5628)
                                   ((_ to_fp 11 53) x1_ack!5626))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5628)
                                   ((_ to_fp 11 53) x1_ack!5626)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5628)
                           ((_ to_fp 11 53) x1_ack!5626)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5628)
                 ((_ to_fp 11 53) x1_ack!5626)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5628)
                                  ((_ to_fp 11 53) x1_ack!5626)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5628)
                                   ((_ to_fp 11 53) x1_ack!5626))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5628)
                                   ((_ to_fp 11 53) x1_ack!5626)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5628)
                           ((_ to_fp 11 53) x1_ack!5626)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5628)
                 ((_ to_fp 11 53) x1_ack!5626)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5629)
                                  ((_ to_fp 11 53) x1_ack!5626)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5629)
                                   ((_ to_fp 11 53) x1_ack!5626))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5629)
                                   ((_ to_fp 11 53) x1_ack!5626)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5629)
                           ((_ to_fp 11 53) x1_ack!5626)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5629)
                 ((_ to_fp 11 53) x1_ack!5626)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5629)
                                  ((_ to_fp 11 53) x1_ack!5626)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5629)
                                   ((_ to_fp 11 53) x1_ack!5626))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5629)
                                   ((_ to_fp 11 53) x1_ack!5626)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5629)
                           ((_ to_fp 11 53) x1_ack!5626)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5629)
                 ((_ to_fp 11 53) x1_ack!5626)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5628)
                           ((_ to_fp 11 53) x1_ack!5626))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5628)
                           ((_ to_fp 11 53) x1_ack!5626))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5629)
                           ((_ to_fp 11 53) x1_ack!5626))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5629)
                           ((_ to_fp 11 53) x1_ack!5626)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5628)
                           ((_ to_fp 11 53) x1_ack!5626))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5628)
                           ((_ to_fp 11 53) x1_ack!5626))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5629)
                           ((_ to_fp 11 53) x1_ack!5626))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5629)
                           ((_ to_fp 11 53) x1_ack!5626)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5628)
                                   ((_ to_fp 11 53) x1_ack!5626))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5628)
                                   ((_ to_fp 11 53) x1_ack!5626)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5629)
                                   ((_ to_fp 11 53) x1_ack!5626))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5629)
                                   ((_ to_fp 11 53) x1_ack!5626)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5628)
                           ((_ to_fp 11 53) x1_ack!5626))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5629)
                           ((_ to_fp 11 53) x1_ack!5626)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5628)
                                   ((_ to_fp 11 53) x1_ack!5626))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5628)
                                   ((_ to_fp 11 53) x1_ack!5626)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5629)
                                   ((_ to_fp 11 53) x1_ack!5626))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5629)
                                   ((_ to_fp 11 53) x1_ack!5626)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5628)
                           ((_ to_fp 11 53) x1_ack!5626))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5629)
                           ((_ to_fp 11 53) x1_ack!5626)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FSUB_ACCURACY b_ack!5629 a_ack!5628))

(check-sat)
(exit)

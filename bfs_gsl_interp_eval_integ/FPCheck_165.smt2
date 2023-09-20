(declare-fun x1_ack!1855 () (_ BitVec 64))
(declare-fun x0_ack!1859 () (_ BitVec 64))
(declare-fun x2_ack!1856 () (_ BitVec 64))
(declare-fun b_ack!1858 () (_ BitVec 64))
(declare-fun a_ack!1857 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1859) ((_ to_fp 11 53) x1_ack!1855)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1855) ((_ to_fp 11 53) x2_ack!1856)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1855)
                       ((_ to_fp 11 53) x0_ack!1859))
               ((_ to_fp 11 53) x0_ack!1859))
       ((_ to_fp 11 53) x1_ack!1855)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1855)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1855)
                       ((_ to_fp 11 53) x0_ack!1859)))
       ((_ to_fp 11 53) x0_ack!1859)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1856)
                       ((_ to_fp 11 53) x1_ack!1855))
               ((_ to_fp 11 53) x1_ack!1855))
       ((_ to_fp 11 53) x2_ack!1856)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1856)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1856)
                       ((_ to_fp 11 53) x1_ack!1855)))
       ((_ to_fp 11 53) x1_ack!1855)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1855)
                    ((_ to_fp 11 53) x0_ack!1859))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1856)
                    ((_ to_fp 11 53) x1_ack!1855))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1857) ((_ to_fp 11 53) b_ack!1858))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1857) ((_ to_fp 11 53) x0_ack!1859))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1858) ((_ to_fp 11 53) x2_ack!1856))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1857) ((_ to_fp 11 53) b_ack!1858))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1857) ((_ to_fp 11 53) x0_ack!1859))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1857) ((_ to_fp 11 53) x1_ack!1855))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1858) ((_ to_fp 11 53) x0_ack!1859)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1855)
                    ((_ to_fp 11 53) x0_ack!1859))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1858)
                                  ((_ to_fp 11 53) x0_ack!1859)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1858)
                                   ((_ to_fp 11 53) x0_ack!1859))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1858)
                                   ((_ to_fp 11 53) x0_ack!1859)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1858)
                           ((_ to_fp 11 53) x0_ack!1859)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1858)
                 ((_ to_fp 11 53) x0_ack!1859)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1858)
                                  ((_ to_fp 11 53) x0_ack!1859)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1858)
                                   ((_ to_fp 11 53) x0_ack!1859))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1858)
                                   ((_ to_fp 11 53) x0_ack!1859)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1858)
                           ((_ to_fp 11 53) x0_ack!1859)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1858)
                 ((_ to_fp 11 53) x0_ack!1859)))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!1858 a_ack!1857))

(check-sat)
(exit)

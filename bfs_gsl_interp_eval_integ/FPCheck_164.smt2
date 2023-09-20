(declare-fun x1_ack!1845 () (_ BitVec 64))
(declare-fun x0_ack!1849 () (_ BitVec 64))
(declare-fun x2_ack!1846 () (_ BitVec 64))
(declare-fun b_ack!1848 () (_ BitVec 64))
(declare-fun a_ack!1847 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1849) ((_ to_fp 11 53) x1_ack!1845)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1845) ((_ to_fp 11 53) x2_ack!1846)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1845)
                       ((_ to_fp 11 53) x0_ack!1849))
               ((_ to_fp 11 53) x0_ack!1849))
       ((_ to_fp 11 53) x1_ack!1845)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1845)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1845)
                       ((_ to_fp 11 53) x0_ack!1849)))
       ((_ to_fp 11 53) x0_ack!1849)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1846)
                       ((_ to_fp 11 53) x1_ack!1845))
               ((_ to_fp 11 53) x1_ack!1845))
       ((_ to_fp 11 53) x2_ack!1846)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1846)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1846)
                       ((_ to_fp 11 53) x1_ack!1845)))
       ((_ to_fp 11 53) x1_ack!1845)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1845)
                    ((_ to_fp 11 53) x0_ack!1849))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1846)
                    ((_ to_fp 11 53) x1_ack!1845))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1847) ((_ to_fp 11 53) b_ack!1848))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1847) ((_ to_fp 11 53) x0_ack!1849))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1848) ((_ to_fp 11 53) x2_ack!1846))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1847) ((_ to_fp 11 53) b_ack!1848))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1847) ((_ to_fp 11 53) x0_ack!1849))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1847) ((_ to_fp 11 53) x1_ack!1845))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1848) ((_ to_fp 11 53) x0_ack!1849)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1845)
                    ((_ to_fp 11 53) x0_ack!1849))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1848)
                                  ((_ to_fp 11 53) x0_ack!1849)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1848)
                                   ((_ to_fp 11 53) x0_ack!1849))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1848)
                                   ((_ to_fp 11 53) x0_ack!1849)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1848)
                           ((_ to_fp 11 53) x0_ack!1849)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1848)
                 ((_ to_fp 11 53) x0_ack!1849)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1848)
                                  ((_ to_fp 11 53) x0_ack!1849)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1848)
                                   ((_ to_fp 11 53) x0_ack!1849))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1848)
                                   ((_ to_fp 11 53) x0_ack!1849)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1848)
                           ((_ to_fp 11 53) x0_ack!1849)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1848)
                 ((_ to_fp 11 53) x0_ack!1849)))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!1848 a_ack!1847))

(check-sat)
(exit)

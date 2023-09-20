(declare-fun x1_ack!1840 () (_ BitVec 64))
(declare-fun x0_ack!1844 () (_ BitVec 64))
(declare-fun x2_ack!1841 () (_ BitVec 64))
(declare-fun b_ack!1843 () (_ BitVec 64))
(declare-fun a_ack!1842 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1844) ((_ to_fp 11 53) x1_ack!1840)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1840) ((_ to_fp 11 53) x2_ack!1841)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1840)
                       ((_ to_fp 11 53) x0_ack!1844))
               ((_ to_fp 11 53) x0_ack!1844))
       ((_ to_fp 11 53) x1_ack!1840)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1840)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1840)
                       ((_ to_fp 11 53) x0_ack!1844)))
       ((_ to_fp 11 53) x0_ack!1844)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1841)
                       ((_ to_fp 11 53) x1_ack!1840))
               ((_ to_fp 11 53) x1_ack!1840))
       ((_ to_fp 11 53) x2_ack!1841)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1841)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1841)
                       ((_ to_fp 11 53) x1_ack!1840)))
       ((_ to_fp 11 53) x1_ack!1840)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1840)
                    ((_ to_fp 11 53) x0_ack!1844))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1841)
                    ((_ to_fp 11 53) x1_ack!1840))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1842) ((_ to_fp 11 53) b_ack!1843))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1842) ((_ to_fp 11 53) x0_ack!1844))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1843) ((_ to_fp 11 53) x2_ack!1841))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1842) ((_ to_fp 11 53) b_ack!1843))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1842) ((_ to_fp 11 53) x0_ack!1844))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1842) ((_ to_fp 11 53) x1_ack!1840))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1843) ((_ to_fp 11 53) x0_ack!1844)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1840)
                    ((_ to_fp 11 53) x0_ack!1844))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1843)
                                  ((_ to_fp 11 53) x0_ack!1844)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1843)
                                   ((_ to_fp 11 53) x0_ack!1844))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1843)
                                   ((_ to_fp 11 53) x0_ack!1844)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1843)
                           ((_ to_fp 11 53) x0_ack!1844)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1843)
                 ((_ to_fp 11 53) x0_ack!1844)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1843)
                                  ((_ to_fp 11 53) x0_ack!1844)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1843)
                                   ((_ to_fp 11 53) x0_ack!1844))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1843)
                                   ((_ to_fp 11 53) x0_ack!1844)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1843)
                           ((_ to_fp 11 53) x0_ack!1844)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1843)
                 ((_ to_fp 11 53) x0_ack!1844)))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!1843 a_ack!1842))

(check-sat)
(exit)

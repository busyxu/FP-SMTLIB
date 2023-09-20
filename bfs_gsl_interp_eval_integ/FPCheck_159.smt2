(declare-fun x1_ack!1787 () (_ BitVec 64))
(declare-fun x0_ack!1791 () (_ BitVec 64))
(declare-fun x2_ack!1788 () (_ BitVec 64))
(declare-fun b_ack!1790 () (_ BitVec 64))
(declare-fun a_ack!1789 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1791) ((_ to_fp 11 53) x1_ack!1787)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1787) ((_ to_fp 11 53) x2_ack!1788)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1787)
                       ((_ to_fp 11 53) x0_ack!1791))
               ((_ to_fp 11 53) x0_ack!1791))
       ((_ to_fp 11 53) x1_ack!1787)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1787)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1787)
                       ((_ to_fp 11 53) x0_ack!1791)))
       ((_ to_fp 11 53) x0_ack!1791)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1788)
                       ((_ to_fp 11 53) x1_ack!1787))
               ((_ to_fp 11 53) x1_ack!1787))
       ((_ to_fp 11 53) x2_ack!1788)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1788)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1788)
                       ((_ to_fp 11 53) x1_ack!1787)))
       ((_ to_fp 11 53) x1_ack!1787)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1787)
                    ((_ to_fp 11 53) x0_ack!1791))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1788)
                    ((_ to_fp 11 53) x1_ack!1787))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1789) ((_ to_fp 11 53) b_ack!1790))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1789) ((_ to_fp 11 53) x0_ack!1791))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1790) ((_ to_fp 11 53) x2_ack!1788))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1789) ((_ to_fp 11 53) b_ack!1790))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1789) ((_ to_fp 11 53) x0_ack!1791))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1789) ((_ to_fp 11 53) x1_ack!1787))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1790) ((_ to_fp 11 53) x0_ack!1791)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1787)
                    ((_ to_fp 11 53) x0_ack!1791))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1790)
                                  ((_ to_fp 11 53) x0_ack!1791)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1790)
                                   ((_ to_fp 11 53) x0_ack!1791))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1790)
                                   ((_ to_fp 11 53) x0_ack!1791)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1790)
                           ((_ to_fp 11 53) x0_ack!1791)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1790)
                 ((_ to_fp 11 53) x0_ack!1791)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1790)
                                  ((_ to_fp 11 53) x0_ack!1791)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1790)
                                   ((_ to_fp 11 53) x0_ack!1791))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1790)
                                   ((_ to_fp 11 53) x0_ack!1791)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1790)
                           ((_ to_fp 11 53) x0_ack!1791)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1790)
                 ((_ to_fp 11 53) x0_ack!1791)))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1789)
                  ((_ to_fp 11 53) x0_ack!1791))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1789)
                  ((_ to_fp 11 53) x0_ack!1791)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1790)
                  ((_ to_fp 11 53) x0_ack!1791))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1790)
                  ((_ to_fp 11 53) x0_ack!1791)))))

(check-sat)
(exit)

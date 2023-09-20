(declare-fun x1_ack!5616 () (_ BitVec 64))
(declare-fun x0_ack!5620 () (_ BitVec 64))
(declare-fun x2_ack!5617 () (_ BitVec 64))
(declare-fun b_ack!5619 () (_ BitVec 64))
(declare-fun a_ack!5618 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5620) ((_ to_fp 11 53) x1_ack!5616)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5616) ((_ to_fp 11 53) x2_ack!5617)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5616)
                       ((_ to_fp 11 53) x0_ack!5620))
               ((_ to_fp 11 53) x0_ack!5620))
       ((_ to_fp 11 53) x1_ack!5616)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5616)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5616)
                       ((_ to_fp 11 53) x0_ack!5620)))
       ((_ to_fp 11 53) x0_ack!5620)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5617)
                       ((_ to_fp 11 53) x1_ack!5616))
               ((_ to_fp 11 53) x1_ack!5616))
       ((_ to_fp 11 53) x2_ack!5617)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5617)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5617)
                       ((_ to_fp 11 53) x1_ack!5616)))
       ((_ to_fp 11 53) x1_ack!5616)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5616)
                    ((_ to_fp 11 53) x0_ack!5620))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5617)
                    ((_ to_fp 11 53) x1_ack!5616))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5618) ((_ to_fp 11 53) b_ack!5619))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5618) ((_ to_fp 11 53) x0_ack!5620))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5619) ((_ to_fp 11 53) x2_ack!5617))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5618) ((_ to_fp 11 53) b_ack!5619))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5618) ((_ to_fp 11 53) x0_ack!5620))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5618) ((_ to_fp 11 53) x1_ack!5616)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5616) ((_ to_fp 11 53) a_ack!5618))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5619) ((_ to_fp 11 53) x1_ack!5616))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5619) ((_ to_fp 11 53) x2_ack!5617)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5617)
                    ((_ to_fp 11 53) x1_ack!5616))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5618)
                       ((_ to_fp 11 53) x1_ack!5616))
               ((_ to_fp 11 53) x1_ack!5616))
       ((_ to_fp 11 53) a_ack!5618)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5618)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5618)
                       ((_ to_fp 11 53) x1_ack!5616)))
       ((_ to_fp 11 53) x1_ack!5616)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5618)
                                  ((_ to_fp 11 53) x1_ack!5616)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5618)
                                   ((_ to_fp 11 53) x1_ack!5616))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5618)
                                   ((_ to_fp 11 53) x1_ack!5616)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5618)
                           ((_ to_fp 11 53) x1_ack!5616)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5618)
                 ((_ to_fp 11 53) x1_ack!5616)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5618)
                                  ((_ to_fp 11 53) x1_ack!5616)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5618)
                                   ((_ to_fp 11 53) x1_ack!5616))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5618)
                                   ((_ to_fp 11 53) x1_ack!5616)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5618)
                           ((_ to_fp 11 53) x1_ack!5616)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5618)
                 ((_ to_fp 11 53) x1_ack!5616)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5619)
                                  ((_ to_fp 11 53) x1_ack!5616)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5619)
                                   ((_ to_fp 11 53) x1_ack!5616))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5619)
                                   ((_ to_fp 11 53) x1_ack!5616)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5619)
                           ((_ to_fp 11 53) x1_ack!5616)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5619)
                 ((_ to_fp 11 53) x1_ack!5616)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5619)
                                  ((_ to_fp 11 53) x1_ack!5616)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5619)
                                   ((_ to_fp 11 53) x1_ack!5616))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5619)
                                   ((_ to_fp 11 53) x1_ack!5616)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5619)
                           ((_ to_fp 11 53) x1_ack!5616)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5619)
                 ((_ to_fp 11 53) x1_ack!5616)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5618)
                           ((_ to_fp 11 53) x1_ack!5616))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5618)
                           ((_ to_fp 11 53) x1_ack!5616))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5619)
                           ((_ to_fp 11 53) x1_ack!5616))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5619)
                           ((_ to_fp 11 53) x1_ack!5616)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5618)
                           ((_ to_fp 11 53) x1_ack!5616))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5618)
                           ((_ to_fp 11 53) x1_ack!5616))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5619)
                           ((_ to_fp 11 53) x1_ack!5616))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5619)
                           ((_ to_fp 11 53) x1_ack!5616)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5618)
                                   ((_ to_fp 11 53) x1_ack!5616))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5618)
                                   ((_ to_fp 11 53) x1_ack!5616)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5619)
                                   ((_ to_fp 11 53) x1_ack!5616))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5619)
                                   ((_ to_fp 11 53) x1_ack!5616)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5618)
                           ((_ to_fp 11 53) x1_ack!5616))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5619)
                           ((_ to_fp 11 53) x1_ack!5616)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5618)
                                   ((_ to_fp 11 53) x1_ack!5616))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5618)
                                   ((_ to_fp 11 53) x1_ack!5616)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5619)
                                   ((_ to_fp 11 53) x1_ack!5616))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5619)
                                   ((_ to_fp 11 53) x1_ack!5616)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5618)
                           ((_ to_fp 11 53) x1_ack!5616))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5619)
                           ((_ to_fp 11 53) x1_ack!5616)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!5619 a_ack!5618))

(check-sat)
(exit)

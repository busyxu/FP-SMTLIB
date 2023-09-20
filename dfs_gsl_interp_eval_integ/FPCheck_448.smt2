(declare-fun x1_ack!5543 () (_ BitVec 64))
(declare-fun x0_ack!5547 () (_ BitVec 64))
(declare-fun x2_ack!5544 () (_ BitVec 64))
(declare-fun b_ack!5546 () (_ BitVec 64))
(declare-fun a_ack!5545 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5547) ((_ to_fp 11 53) x1_ack!5543)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5543) ((_ to_fp 11 53) x2_ack!5544)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5543)
                       ((_ to_fp 11 53) x0_ack!5547))
               ((_ to_fp 11 53) x0_ack!5547))
       ((_ to_fp 11 53) x1_ack!5543)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5543)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5543)
                       ((_ to_fp 11 53) x0_ack!5547)))
       ((_ to_fp 11 53) x0_ack!5547)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5544)
                       ((_ to_fp 11 53) x1_ack!5543))
               ((_ to_fp 11 53) x1_ack!5543))
       ((_ to_fp 11 53) x2_ack!5544)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5544)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5544)
                       ((_ to_fp 11 53) x1_ack!5543)))
       ((_ to_fp 11 53) x1_ack!5543)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5543)
                    ((_ to_fp 11 53) x0_ack!5547))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5544)
                    ((_ to_fp 11 53) x1_ack!5543))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5545) ((_ to_fp 11 53) b_ack!5546))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5545) ((_ to_fp 11 53) x0_ack!5547))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5546) ((_ to_fp 11 53) x2_ack!5544))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5545) ((_ to_fp 11 53) b_ack!5546))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5545) ((_ to_fp 11 53) x0_ack!5547))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5545) ((_ to_fp 11 53) x1_ack!5543)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5543) ((_ to_fp 11 53) a_ack!5545))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5546) ((_ to_fp 11 53) x1_ack!5543))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5546) ((_ to_fp 11 53) x2_ack!5544)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5544)
                    ((_ to_fp 11 53) x1_ack!5543))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5545)
                       ((_ to_fp 11 53) x1_ack!5543))
               ((_ to_fp 11 53) x1_ack!5543))
       ((_ to_fp 11 53) a_ack!5545)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5545)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5545)
                       ((_ to_fp 11 53) x1_ack!5543)))
       ((_ to_fp 11 53) x1_ack!5543)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5545)
                                  ((_ to_fp 11 53) x1_ack!5543)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5545)
                                   ((_ to_fp 11 53) x1_ack!5543))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5545)
                                   ((_ to_fp 11 53) x1_ack!5543)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5545)
                           ((_ to_fp 11 53) x1_ack!5543)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5545)
                 ((_ to_fp 11 53) x1_ack!5543)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5545)
                                  ((_ to_fp 11 53) x1_ack!5543)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5545)
                                   ((_ to_fp 11 53) x1_ack!5543))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5545)
                                   ((_ to_fp 11 53) x1_ack!5543)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5545)
                           ((_ to_fp 11 53) x1_ack!5543)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5545)
                 ((_ to_fp 11 53) x1_ack!5543)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5546)
                                  ((_ to_fp 11 53) x1_ack!5543)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5546)
                                   ((_ to_fp 11 53) x1_ack!5543))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5546)
                                   ((_ to_fp 11 53) x1_ack!5543)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5546)
                           ((_ to_fp 11 53) x1_ack!5543)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5546)
                 ((_ to_fp 11 53) x1_ack!5543)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5546)
                                  ((_ to_fp 11 53) x1_ack!5543)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5546)
                                   ((_ to_fp 11 53) x1_ack!5543))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5546)
                                   ((_ to_fp 11 53) x1_ack!5543)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5546)
                           ((_ to_fp 11 53) x1_ack!5543)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5546)
                 ((_ to_fp 11 53) x1_ack!5543)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5545)
                           ((_ to_fp 11 53) x1_ack!5543))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5545)
                           ((_ to_fp 11 53) x1_ack!5543))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5546)
                           ((_ to_fp 11 53) x1_ack!5543))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5546)
                           ((_ to_fp 11 53) x1_ack!5543)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5545)
                           ((_ to_fp 11 53) x1_ack!5543))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5545)
                           ((_ to_fp 11 53) x1_ack!5543))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5546)
                           ((_ to_fp 11 53) x1_ack!5543))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5546)
                           ((_ to_fp 11 53) x1_ack!5543)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5545)
                                   ((_ to_fp 11 53) x1_ack!5543))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5545)
                                   ((_ to_fp 11 53) x1_ack!5543)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5546)
                                   ((_ to_fp 11 53) x1_ack!5543))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5546)
                                   ((_ to_fp 11 53) x1_ack!5543)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5545)
                           ((_ to_fp 11 53) x1_ack!5543))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5546)
                           ((_ to_fp 11 53) x1_ack!5543)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5545)
                                   ((_ to_fp 11 53) x1_ack!5543))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5545)
                                   ((_ to_fp 11 53) x1_ack!5543)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5546)
                                   ((_ to_fp 11 53) x1_ack!5543))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5546)
                                   ((_ to_fp 11 53) x1_ack!5543)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5545)
                           ((_ to_fp 11 53) x1_ack!5543))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5546)
                           ((_ to_fp 11 53) x1_ack!5543)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5545)
                  ((_ to_fp 11 53) x1_ack!5543))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5545)
                  ((_ to_fp 11 53) x1_ack!5543)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5546)
                  ((_ to_fp 11 53) x1_ack!5543))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5546)
                  ((_ to_fp 11 53) x1_ack!5543)))))

(check-sat)
(exit)

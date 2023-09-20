(declare-fun x1_ack!5703 () (_ BitVec 64))
(declare-fun x0_ack!5710 () (_ BitVec 64))
(declare-fun x2_ack!5704 () (_ BitVec 64))
(declare-fun b_ack!5709 () (_ BitVec 64))
(declare-fun a_ack!5708 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5705 () (_ BitVec 64))
(declare-fun y1_ack!5706 () (_ BitVec 64))
(declare-fun y2_ack!5707 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5710) ((_ to_fp 11 53) x1_ack!5703)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5703) ((_ to_fp 11 53) x2_ack!5704)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5703)
                       ((_ to_fp 11 53) x0_ack!5710))
               ((_ to_fp 11 53) x0_ack!5710))
       ((_ to_fp 11 53) x1_ack!5703)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5703)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5703)
                       ((_ to_fp 11 53) x0_ack!5710)))
       ((_ to_fp 11 53) x0_ack!5710)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5704)
                       ((_ to_fp 11 53) x1_ack!5703))
               ((_ to_fp 11 53) x1_ack!5703))
       ((_ to_fp 11 53) x2_ack!5704)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5704)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5704)
                       ((_ to_fp 11 53) x1_ack!5703)))
       ((_ to_fp 11 53) x1_ack!5703)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5703)
                    ((_ to_fp 11 53) x0_ack!5710))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5704)
                    ((_ to_fp 11 53) x1_ack!5703))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5708) ((_ to_fp 11 53) b_ack!5709))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5708) ((_ to_fp 11 53) x0_ack!5710))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5709) ((_ to_fp 11 53) x2_ack!5704))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5708) ((_ to_fp 11 53) b_ack!5709))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5708) ((_ to_fp 11 53) x0_ack!5710))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5708) ((_ to_fp 11 53) x1_ack!5703)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5703) ((_ to_fp 11 53) a_ack!5708))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5709) ((_ to_fp 11 53) x1_ack!5703))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5709) ((_ to_fp 11 53) x2_ack!5704)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5704)
                    ((_ to_fp 11 53) x1_ack!5703))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5708)
                       ((_ to_fp 11 53) x1_ack!5703))
               ((_ to_fp 11 53) x1_ack!5703))
       ((_ to_fp 11 53) a_ack!5708)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5708)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5708)
                       ((_ to_fp 11 53) x1_ack!5703)))
       ((_ to_fp 11 53) x1_ack!5703)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5708)
                                  ((_ to_fp 11 53) x1_ack!5703)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5708)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5708)
                                   ((_ to_fp 11 53) x1_ack!5703)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5708)
                           ((_ to_fp 11 53) x1_ack!5703)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5708)
                 ((_ to_fp 11 53) x1_ack!5703)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5708)
                                  ((_ to_fp 11 53) x1_ack!5703)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5708)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5708)
                                   ((_ to_fp 11 53) x1_ack!5703)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5708)
                           ((_ to_fp 11 53) x1_ack!5703)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5708)
                 ((_ to_fp 11 53) x1_ack!5703)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5709)
                                  ((_ to_fp 11 53) x1_ack!5703)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5709)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5709)
                                   ((_ to_fp 11 53) x1_ack!5703)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5709)
                           ((_ to_fp 11 53) x1_ack!5703)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5709)
                 ((_ to_fp 11 53) x1_ack!5703)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5709)
                                  ((_ to_fp 11 53) x1_ack!5703)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5709)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5709)
                                   ((_ to_fp 11 53) x1_ack!5703)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5709)
                           ((_ to_fp 11 53) x1_ack!5703)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5709)
                 ((_ to_fp 11 53) x1_ack!5703)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5708)
                           ((_ to_fp 11 53) x1_ack!5703))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5708)
                           ((_ to_fp 11 53) x1_ack!5703))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5709)
                           ((_ to_fp 11 53) x1_ack!5703))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5709)
                           ((_ to_fp 11 53) x1_ack!5703)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5708)
                           ((_ to_fp 11 53) x1_ack!5703))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5708)
                           ((_ to_fp 11 53) x1_ack!5703))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5709)
                           ((_ to_fp 11 53) x1_ack!5703))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5709)
                           ((_ to_fp 11 53) x1_ack!5703)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5708)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5708)
                                   ((_ to_fp 11 53) x1_ack!5703)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5709)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5709)
                                   ((_ to_fp 11 53) x1_ack!5703)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5708)
                           ((_ to_fp 11 53) x1_ack!5703))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5709)
                           ((_ to_fp 11 53) x1_ack!5703)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5708)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5708)
                                   ((_ to_fp 11 53) x1_ack!5703)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5709)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5709)
                                   ((_ to_fp 11 53) x1_ack!5703)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5708)
                           ((_ to_fp 11 53) x1_ack!5703))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5709)
                           ((_ to_fp 11 53) x1_ack!5703)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5707)
                           ((_ to_fp 11 53) y1_ack!5706))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5704)
                                   ((_ to_fp 11 53) x1_ack!5703)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5706)
                           ((_ to_fp 11 53) y0_ack!5705))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5703)
                                   ((_ to_fp 11 53) x0_ack!5710)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5704)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5703)
                                   ((_ to_fp 11 53) x0_ack!5710)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5708)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5708)
                                   ((_ to_fp 11 53) x1_ack!5703)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5709)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5709)
                                   ((_ to_fp 11 53) x1_ack!5703))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5708)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5709)
                                   ((_ to_fp 11 53) x1_ack!5703))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!5704)
                           ((_ to_fp 11 53) x1_ack!5703))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!5707)
                                   ((_ to_fp 11 53) y1_ack!5706))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5704)
                                   ((_ to_fp 11 53) x1_ack!5703)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5708)
                                   ((_ to_fp 11 53) x1_ack!5703))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5709)
                                   ((_ to_fp 11 53) x1_ack!5703))))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!5706) a!7)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    a!4)
            a!9))))))))

(check-sat)
(exit)

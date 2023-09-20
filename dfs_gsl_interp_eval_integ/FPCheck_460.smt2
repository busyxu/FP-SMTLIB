(declare-fun x1_ack!5687 () (_ BitVec 64))
(declare-fun x0_ack!5694 () (_ BitVec 64))
(declare-fun x2_ack!5688 () (_ BitVec 64))
(declare-fun b_ack!5693 () (_ BitVec 64))
(declare-fun a_ack!5692 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5689 () (_ BitVec 64))
(declare-fun y1_ack!5690 () (_ BitVec 64))
(declare-fun y2_ack!5691 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5694) ((_ to_fp 11 53) x1_ack!5687)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5687) ((_ to_fp 11 53) x2_ack!5688)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5687)
                       ((_ to_fp 11 53) x0_ack!5694))
               ((_ to_fp 11 53) x0_ack!5694))
       ((_ to_fp 11 53) x1_ack!5687)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5687)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5687)
                       ((_ to_fp 11 53) x0_ack!5694)))
       ((_ to_fp 11 53) x0_ack!5694)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5688)
                       ((_ to_fp 11 53) x1_ack!5687))
               ((_ to_fp 11 53) x1_ack!5687))
       ((_ to_fp 11 53) x2_ack!5688)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5688)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5688)
                       ((_ to_fp 11 53) x1_ack!5687)))
       ((_ to_fp 11 53) x1_ack!5687)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5687)
                    ((_ to_fp 11 53) x0_ack!5694))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5688)
                    ((_ to_fp 11 53) x1_ack!5687))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5692) ((_ to_fp 11 53) b_ack!5693))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5692) ((_ to_fp 11 53) x0_ack!5694))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5693) ((_ to_fp 11 53) x2_ack!5688))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5692) ((_ to_fp 11 53) b_ack!5693))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5692) ((_ to_fp 11 53) x0_ack!5694))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5692) ((_ to_fp 11 53) x1_ack!5687)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5687) ((_ to_fp 11 53) a_ack!5692))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5693) ((_ to_fp 11 53) x1_ack!5687))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5693) ((_ to_fp 11 53) x2_ack!5688)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5688)
                    ((_ to_fp 11 53) x1_ack!5687))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5692)
                       ((_ to_fp 11 53) x1_ack!5687))
               ((_ to_fp 11 53) x1_ack!5687))
       ((_ to_fp 11 53) a_ack!5692)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5692)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5692)
                       ((_ to_fp 11 53) x1_ack!5687)))
       ((_ to_fp 11 53) x1_ack!5687)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5692)
                                  ((_ to_fp 11 53) x1_ack!5687)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5692)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5692)
                                   ((_ to_fp 11 53) x1_ack!5687)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5692)
                           ((_ to_fp 11 53) x1_ack!5687)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5692)
                 ((_ to_fp 11 53) x1_ack!5687)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5692)
                                  ((_ to_fp 11 53) x1_ack!5687)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5692)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5692)
                                   ((_ to_fp 11 53) x1_ack!5687)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5692)
                           ((_ to_fp 11 53) x1_ack!5687)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5692)
                 ((_ to_fp 11 53) x1_ack!5687)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5693)
                                  ((_ to_fp 11 53) x1_ack!5687)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5693)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5693)
                                   ((_ to_fp 11 53) x1_ack!5687)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5693)
                           ((_ to_fp 11 53) x1_ack!5687)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5693)
                 ((_ to_fp 11 53) x1_ack!5687)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5693)
                                  ((_ to_fp 11 53) x1_ack!5687)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5693)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5693)
                                   ((_ to_fp 11 53) x1_ack!5687)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5693)
                           ((_ to_fp 11 53) x1_ack!5687)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5693)
                 ((_ to_fp 11 53) x1_ack!5687)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5692)
                           ((_ to_fp 11 53) x1_ack!5687))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5692)
                           ((_ to_fp 11 53) x1_ack!5687))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5693)
                           ((_ to_fp 11 53) x1_ack!5687))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5693)
                           ((_ to_fp 11 53) x1_ack!5687)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5692)
                           ((_ to_fp 11 53) x1_ack!5687))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5692)
                           ((_ to_fp 11 53) x1_ack!5687))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5693)
                           ((_ to_fp 11 53) x1_ack!5687))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5693)
                           ((_ to_fp 11 53) x1_ack!5687)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5692)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5692)
                                   ((_ to_fp 11 53) x1_ack!5687)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5693)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5693)
                                   ((_ to_fp 11 53) x1_ack!5687)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5692)
                           ((_ to_fp 11 53) x1_ack!5687))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5693)
                           ((_ to_fp 11 53) x1_ack!5687)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5692)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5692)
                                   ((_ to_fp 11 53) x1_ack!5687)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5693)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5693)
                                   ((_ to_fp 11 53) x1_ack!5687)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5692)
                           ((_ to_fp 11 53) x1_ack!5687))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5693)
                           ((_ to_fp 11 53) x1_ack!5687)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5691)
                           ((_ to_fp 11 53) y1_ack!5690))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5688)
                                   ((_ to_fp 11 53) x1_ack!5687)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5690)
                           ((_ to_fp 11 53) y0_ack!5689))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5687)
                                   ((_ to_fp 11 53) x0_ack!5694)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5688)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5687)
                                   ((_ to_fp 11 53) x0_ack!5694)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5692)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5692)
                                   ((_ to_fp 11 53) x1_ack!5687)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5693)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5693)
                                   ((_ to_fp 11 53) x1_ack!5687))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5692)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5693)
                                   ((_ to_fp 11 53) x1_ack!5687))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!5688)
                           ((_ to_fp 11 53) x1_ack!5687))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!5691)
                                   ((_ to_fp 11 53) y1_ack!5690))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5688)
                                   ((_ to_fp 11 53) x1_ack!5687)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5692)
                                   ((_ to_fp 11 53) x1_ack!5687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5693)
                                   ((_ to_fp 11 53) x1_ack!5687))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!5690) a!7)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    a!4)
            a!9))))))))

(check-sat)
(exit)

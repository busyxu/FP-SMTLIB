(declare-fun x1_ack!5239 () (_ BitVec 64))
(declare-fun x0_ack!5243 () (_ BitVec 64))
(declare-fun x2_ack!5240 () (_ BitVec 64))
(declare-fun b_ack!5242 () (_ BitVec 64))
(declare-fun a_ack!5241 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5243) ((_ to_fp 11 53) x1_ack!5239)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5239) ((_ to_fp 11 53) x2_ack!5240)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5239)
                       ((_ to_fp 11 53) x0_ack!5243))
               ((_ to_fp 11 53) x0_ack!5243))
       ((_ to_fp 11 53) x1_ack!5239)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5239)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5239)
                       ((_ to_fp 11 53) x0_ack!5243)))
       ((_ to_fp 11 53) x0_ack!5243)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5240)
                       ((_ to_fp 11 53) x1_ack!5239))
               ((_ to_fp 11 53) x1_ack!5239))
       ((_ to_fp 11 53) x2_ack!5240)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5240)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5240)
                       ((_ to_fp 11 53) x1_ack!5239)))
       ((_ to_fp 11 53) x1_ack!5239)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5239)
                    ((_ to_fp 11 53) x0_ack!5243))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5240)
                    ((_ to_fp 11 53) x1_ack!5239))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5241) ((_ to_fp 11 53) b_ack!5242))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5241) ((_ to_fp 11 53) x0_ack!5243))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5242) ((_ to_fp 11 53) x2_ack!5240))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5241) ((_ to_fp 11 53) b_ack!5242))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5241) ((_ to_fp 11 53) x0_ack!5243))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5241) ((_ to_fp 11 53) x1_ack!5239)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5239) ((_ to_fp 11 53) a_ack!5241))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5242) ((_ to_fp 11 53) x1_ack!5239))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5242) ((_ to_fp 11 53) x2_ack!5240)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5240)
                    ((_ to_fp 11 53) x1_ack!5239))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5241)
                       ((_ to_fp 11 53) x1_ack!5239))
               ((_ to_fp 11 53) x1_ack!5239))
       ((_ to_fp 11 53) a_ack!5241)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5241)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5241)
                       ((_ to_fp 11 53) x1_ack!5239)))
       ((_ to_fp 11 53) x1_ack!5239)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5241)
                                  ((_ to_fp 11 53) x1_ack!5239)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5241)
                                   ((_ to_fp 11 53) x1_ack!5239))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5241)
                                   ((_ to_fp 11 53) x1_ack!5239)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5241)
                           ((_ to_fp 11 53) x1_ack!5239)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5241)
                 ((_ to_fp 11 53) x1_ack!5239)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5241)
                                  ((_ to_fp 11 53) x1_ack!5239)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5241)
                                   ((_ to_fp 11 53) x1_ack!5239))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5241)
                                   ((_ to_fp 11 53) x1_ack!5239)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5241)
                           ((_ to_fp 11 53) x1_ack!5239)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5241)
                 ((_ to_fp 11 53) x1_ack!5239)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5242)
                                  ((_ to_fp 11 53) x1_ack!5239)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5242)
                                   ((_ to_fp 11 53) x1_ack!5239))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5242)
                                   ((_ to_fp 11 53) x1_ack!5239)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5242)
                           ((_ to_fp 11 53) x1_ack!5239)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5242)
                 ((_ to_fp 11 53) x1_ack!5239)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5242)
                                  ((_ to_fp 11 53) x1_ack!5239)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5242)
                                   ((_ to_fp 11 53) x1_ack!5239))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5242)
                                   ((_ to_fp 11 53) x1_ack!5239)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5242)
                           ((_ to_fp 11 53) x1_ack!5239)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5242)
                 ((_ to_fp 11 53) x1_ack!5239)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5241)
                  ((_ to_fp 11 53) x1_ack!5239))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5241)
                  ((_ to_fp 11 53) x1_ack!5239)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5242)
                  ((_ to_fp 11 53) x1_ack!5239))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5242)
                  ((_ to_fp 11 53) x1_ack!5239)))))

(check-sat)
(exit)

(declare-fun x1_ack!5518 () (_ BitVec 64))
(declare-fun x0_ack!5522 () (_ BitVec 64))
(declare-fun x2_ack!5519 () (_ BitVec 64))
(declare-fun b_ack!5521 () (_ BitVec 64))
(declare-fun a_ack!5520 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5522) ((_ to_fp 11 53) x1_ack!5518)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5518) ((_ to_fp 11 53) x2_ack!5519)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5518)
                       ((_ to_fp 11 53) x0_ack!5522))
               ((_ to_fp 11 53) x0_ack!5522))
       ((_ to_fp 11 53) x1_ack!5518)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5518)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5518)
                       ((_ to_fp 11 53) x0_ack!5522)))
       ((_ to_fp 11 53) x0_ack!5522)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5519)
                       ((_ to_fp 11 53) x1_ack!5518))
               ((_ to_fp 11 53) x1_ack!5518))
       ((_ to_fp 11 53) x2_ack!5519)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5519)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5519)
                       ((_ to_fp 11 53) x1_ack!5518)))
       ((_ to_fp 11 53) x1_ack!5518)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5518)
                    ((_ to_fp 11 53) x0_ack!5522))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5519)
                    ((_ to_fp 11 53) x1_ack!5518))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5520) ((_ to_fp 11 53) b_ack!5521))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5520) ((_ to_fp 11 53) x0_ack!5522))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5521) ((_ to_fp 11 53) x2_ack!5519))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5520) ((_ to_fp 11 53) b_ack!5521))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5520) ((_ to_fp 11 53) x0_ack!5522))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5520) ((_ to_fp 11 53) x1_ack!5518)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5518) ((_ to_fp 11 53) a_ack!5520))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5521) ((_ to_fp 11 53) x1_ack!5518))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5521) ((_ to_fp 11 53) x2_ack!5519)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5519)
                    ((_ to_fp 11 53) x1_ack!5518))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5520)
                       ((_ to_fp 11 53) x1_ack!5518))
               ((_ to_fp 11 53) x1_ack!5518))
       ((_ to_fp 11 53) a_ack!5520)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5520)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5520)
                       ((_ to_fp 11 53) x1_ack!5518)))
       ((_ to_fp 11 53) x1_ack!5518)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5520)
                                  ((_ to_fp 11 53) x1_ack!5518)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5520)
                                   ((_ to_fp 11 53) x1_ack!5518))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5520)
                                   ((_ to_fp 11 53) x1_ack!5518)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5520)
                           ((_ to_fp 11 53) x1_ack!5518)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5520)
                 ((_ to_fp 11 53) x1_ack!5518)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5520)
                                  ((_ to_fp 11 53) x1_ack!5518)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5520)
                                   ((_ to_fp 11 53) x1_ack!5518))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5520)
                                   ((_ to_fp 11 53) x1_ack!5518)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5520)
                           ((_ to_fp 11 53) x1_ack!5518)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5520)
                 ((_ to_fp 11 53) x1_ack!5518)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5521)
                                  ((_ to_fp 11 53) x1_ack!5518)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5521)
                                   ((_ to_fp 11 53) x1_ack!5518))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5521)
                                   ((_ to_fp 11 53) x1_ack!5518)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5521)
                           ((_ to_fp 11 53) x1_ack!5518)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5521)
                 ((_ to_fp 11 53) x1_ack!5518)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5521)
                                  ((_ to_fp 11 53) x1_ack!5518)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5521)
                                   ((_ to_fp 11 53) x1_ack!5518))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5521)
                                   ((_ to_fp 11 53) x1_ack!5518)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5521)
                           ((_ to_fp 11 53) x1_ack!5518)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5521)
                 ((_ to_fp 11 53) x1_ack!5518)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5520)
                           ((_ to_fp 11 53) x1_ack!5518))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5520)
                           ((_ to_fp 11 53) x1_ack!5518))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5521)
                           ((_ to_fp 11 53) x1_ack!5518))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5521)
                           ((_ to_fp 11 53) x1_ack!5518)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5520)
                           ((_ to_fp 11 53) x1_ack!5518))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5520)
                           ((_ to_fp 11 53) x1_ack!5518))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5521)
                           ((_ to_fp 11 53) x1_ack!5518))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5521)
                           ((_ to_fp 11 53) x1_ack!5518)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5520)
                                   ((_ to_fp 11 53) x1_ack!5518))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5520)
                                   ((_ to_fp 11 53) x1_ack!5518)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5521)
                                   ((_ to_fp 11 53) x1_ack!5518))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5521)
                                   ((_ to_fp 11 53) x1_ack!5518)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5520)
                           ((_ to_fp 11 53) x1_ack!5518))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5521)
                           ((_ to_fp 11 53) x1_ack!5518)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5520)
                                   ((_ to_fp 11 53) x1_ack!5518))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5520)
                                   ((_ to_fp 11 53) x1_ack!5518)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5521)
                                   ((_ to_fp 11 53) x1_ack!5518))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5521)
                                   ((_ to_fp 11 53) x1_ack!5518)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5520)
                           ((_ to_fp 11 53) x1_ack!5518))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5521)
                           ((_ to_fp 11 53) x1_ack!5518)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5521)
          ((_ to_fp 11 53) x1_ack!5518))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5521)
          ((_ to_fp 11 53) x1_ack!5518))))

(check-sat)
(exit)

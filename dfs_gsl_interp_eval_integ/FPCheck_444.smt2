(declare-fun x1_ack!5508 () (_ BitVec 64))
(declare-fun x0_ack!5512 () (_ BitVec 64))
(declare-fun x2_ack!5509 () (_ BitVec 64))
(declare-fun b_ack!5511 () (_ BitVec 64))
(declare-fun a_ack!5510 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5512) ((_ to_fp 11 53) x1_ack!5508)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5508) ((_ to_fp 11 53) x2_ack!5509)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5508)
                       ((_ to_fp 11 53) x0_ack!5512))
               ((_ to_fp 11 53) x0_ack!5512))
       ((_ to_fp 11 53) x1_ack!5508)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5508)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5508)
                       ((_ to_fp 11 53) x0_ack!5512)))
       ((_ to_fp 11 53) x0_ack!5512)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5509)
                       ((_ to_fp 11 53) x1_ack!5508))
               ((_ to_fp 11 53) x1_ack!5508))
       ((_ to_fp 11 53) x2_ack!5509)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5509)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5509)
                       ((_ to_fp 11 53) x1_ack!5508)))
       ((_ to_fp 11 53) x1_ack!5508)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5508)
                    ((_ to_fp 11 53) x0_ack!5512))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5509)
                    ((_ to_fp 11 53) x1_ack!5508))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5510) ((_ to_fp 11 53) b_ack!5511))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5510) ((_ to_fp 11 53) x0_ack!5512))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5511) ((_ to_fp 11 53) x2_ack!5509))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5510) ((_ to_fp 11 53) b_ack!5511))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5510) ((_ to_fp 11 53) x0_ack!5512))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5510) ((_ to_fp 11 53) x1_ack!5508)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5508) ((_ to_fp 11 53) a_ack!5510))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5511) ((_ to_fp 11 53) x1_ack!5508))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5511) ((_ to_fp 11 53) x2_ack!5509)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5509)
                    ((_ to_fp 11 53) x1_ack!5508))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5510)
                       ((_ to_fp 11 53) x1_ack!5508))
               ((_ to_fp 11 53) x1_ack!5508))
       ((_ to_fp 11 53) a_ack!5510)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5510)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5510)
                       ((_ to_fp 11 53) x1_ack!5508)))
       ((_ to_fp 11 53) x1_ack!5508)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5510)
                                  ((_ to_fp 11 53) x1_ack!5508)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5510)
                                   ((_ to_fp 11 53) x1_ack!5508))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5510)
                                   ((_ to_fp 11 53) x1_ack!5508)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5510)
                           ((_ to_fp 11 53) x1_ack!5508)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5510)
                 ((_ to_fp 11 53) x1_ack!5508)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5510)
                                  ((_ to_fp 11 53) x1_ack!5508)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5510)
                                   ((_ to_fp 11 53) x1_ack!5508))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5510)
                                   ((_ to_fp 11 53) x1_ack!5508)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5510)
                           ((_ to_fp 11 53) x1_ack!5508)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5510)
                 ((_ to_fp 11 53) x1_ack!5508)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5511)
                                  ((_ to_fp 11 53) x1_ack!5508)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5511)
                                   ((_ to_fp 11 53) x1_ack!5508))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5511)
                                   ((_ to_fp 11 53) x1_ack!5508)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5511)
                           ((_ to_fp 11 53) x1_ack!5508)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5511)
                 ((_ to_fp 11 53) x1_ack!5508)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5511)
                                  ((_ to_fp 11 53) x1_ack!5508)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5511)
                                   ((_ to_fp 11 53) x1_ack!5508))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5511)
                                   ((_ to_fp 11 53) x1_ack!5508)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5511)
                           ((_ to_fp 11 53) x1_ack!5508)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5511)
                 ((_ to_fp 11 53) x1_ack!5508)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5510)
                           ((_ to_fp 11 53) x1_ack!5508))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5510)
                           ((_ to_fp 11 53) x1_ack!5508))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5511)
                           ((_ to_fp 11 53) x1_ack!5508))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5511)
                           ((_ to_fp 11 53) x1_ack!5508)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5510)
                           ((_ to_fp 11 53) x1_ack!5508))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5510)
                           ((_ to_fp 11 53) x1_ack!5508))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5511)
                           ((_ to_fp 11 53) x1_ack!5508))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5511)
                           ((_ to_fp 11 53) x1_ack!5508)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5510)
                                   ((_ to_fp 11 53) x1_ack!5508))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5510)
                                   ((_ to_fp 11 53) x1_ack!5508)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5511)
                                   ((_ to_fp 11 53) x1_ack!5508))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5511)
                                   ((_ to_fp 11 53) x1_ack!5508)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5510)
                           ((_ to_fp 11 53) x1_ack!5508))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5511)
                           ((_ to_fp 11 53) x1_ack!5508)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5510)
                                   ((_ to_fp 11 53) x1_ack!5508))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5510)
                                   ((_ to_fp 11 53) x1_ack!5508)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5511)
                                   ((_ to_fp 11 53) x1_ack!5508))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5511)
                                   ((_ to_fp 11 53) x1_ack!5508)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5510)
                           ((_ to_fp 11 53) x1_ack!5508))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5511)
                           ((_ to_fp 11 53) x1_ack!5508)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5511)
          ((_ to_fp 11 53) x1_ack!5508))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5511)
          ((_ to_fp 11 53) x1_ack!5508))))

(check-sat)
(exit)

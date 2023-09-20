(declare-fun c_ack!446 () (_ BitVec 64))
(declare-fun b_ack!445 () (_ BitVec 32))
(declare-fun a_ack!447 () (_ BitVec 32))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!446) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!447 b_ack!445)))
(assert (not (= #x00000000 b_ack!445)))
(assert (not (= #x00000000 a_ack!447)))
(assert (not (bvslt b_ack!445 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!446) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!446) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!447 #x00000000)))
(assert (not (bvslt a_ack!447 #x00000000)))
(assert (not (= a_ack!447 b_ack!445)))
(assert (not (= #x00000001 a_ack!447)))
(assert (not (= b_ack!445 (bvadd #x00000001 a_ack!447))))
(assert (not (= a_ack!447 (bvadd #x00000001 b_ack!445))))
(assert (not (= a_ack!447 (bvadd #x00000002 b_ack!445))))
(assert (not (= b_ack!445 (bvmul #x00000002 a_ack!447))))
(assert (bvslt b_ack!445 #x0000000a))
(assert (bvslt a_ack!447 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!446))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!445)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!447)
                          (fp.abs ((_ to_fp 11 53) c_ack!446))))))
  (not a!1)))
(assert (not (bvslt a_ack!447 b_ack!445)))
(assert (not (bvslt a_ack!447 b_ack!445)))
(assert (not (bvslt a_ack!447 b_ack!445)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!446) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!447)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!445)
                                   ((_ to_fp 11 53) c_ack!446))))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!447)
        (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x8000000000000000)
                ((_ to_fp 11 53) c_ack!446))))
(assert (bvslt b_ack!445 (bvadd #xffffffff a_ack!447)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 a_ack!447))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 a_ack!447))
                           ((_ to_fp 11 53) c_ack!446))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!446)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!447)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!446)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   (CF_exp c_ack!446))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp c_ack!446)
                                   a!2))
                   a!3)))
  (fp.eq (fp.add roundNearestTiesToEven a!4 a!3)
         (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.mul roundNearestTiesToEven (CF_exp c_ack!446) a!2))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 a_ack!447))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 a_ack!447))
                           ((_ to_fp 11 53) c_ack!446))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!446)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!447)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!446)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   (CF_exp c_ack!446))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp c_ack!446)
                                   a!2))
                   a!3)))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp c_ack!446)
                                   a!2))
                   a!4)))
  (fp.eq a!5 a!3)))))
(assert (FPCHECK_FMUL_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #xffffffff a_ack!447))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #xffffffff a_ack!447))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)

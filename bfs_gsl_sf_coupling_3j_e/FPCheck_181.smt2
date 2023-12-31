(declare-fun a_ack!2420 () (_ BitVec 32))
(declare-fun b_ack!2415 () (_ BitVec 32))
(declare-fun c_ack!2416 () (_ BitVec 32))
(declare-fun d_ack!2417 () (_ BitVec 32))
(declare-fun e_ack!2418 () (_ BitVec 32))
(declare-fun f_ack!2419 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!2420 #x00000000)))
(assert (not (bvslt b_ack!2415 #x00000000)))
(assert (not (bvslt c_ack!2416 #x00000000)))
(assert (not (bvslt b_ack!2415 #x00000000)))
(assert (not (bvslt (bvadd a_ack!2420 c_ack!2416) b_ack!2415)))
(assert (= #x00000000 (bvand (bvadd a_ack!2420 b_ack!2415 c_ack!2416) #x00000001)))
(assert (not (bvslt a_ack!2420 #x00000000)))
(assert (not (bvslt b_ack!2415 #x00000000)))
(assert (not (bvslt c_ack!2416 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!2420 d_ack!2417) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!2415 e_ack!2418) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!2416 f_ack!2419) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!2417 e_ack!2418 f_ack!2419)))
(assert (not (= #x00000000 d_ack!2417)))
(assert (bvslt (bvsub (bvsdiv (bvadd b_ack!2415 e_ack!2418) #x00000002)
              (bvsdiv (bvsub c_ack!2416 f_ack!2419) #x00000002))
       #x00000000))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!2420 d_ack!2417) #x00000002)
                         (bvsdiv (bvadd c_ack!2416 f_ack!2419) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (bvslt (bvsdiv (bvsub (bvadd a_ack!2420 b_ack!2415) c_ack!2416) #x00000002)
       (bvsdiv (bvsub a_ack!2420 d_ack!2417) #x00000002)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!2420 b_ack!2415) c_ack!2416)
                          #x00000002)
                  (bvsdiv (bvadd b_ack!2415 e_ack!2418) #x00000002))))
  (not a!1)))
(assert (let ((a!1 (bvult a_ack!2420
                  (bvsdiv (bvsub (bvadd a_ack!2420 b_ack!2415) c_ack!2416)
                          #x00000002))))
  (not a!1)))
(assert (let ((a!1 (= (bvsdiv (bvsub (bvadd a_ack!2420 b_ack!2415) c_ack!2416)
                      #x00000002)
              a_ack!2420)))
  (not a!1)))
(assert (let ((a!1 (= #x00000000
              (bvsdiv (bvsub (bvadd a_ack!2420 b_ack!2415) c_ack!2416)
                      #x00000002))))
  (not a!1)))
(assert (let ((a!1 (bvmul #x00000002
                  (bvsdiv (bvsub (bvadd a_ack!2420 b_ack!2415) c_ack!2416)
                          #x00000002))))
  (bvult a_ack!2420 a!1)))
(assert (not (bvule a_ack!2420 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2420)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2420)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!2420)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!2420)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)

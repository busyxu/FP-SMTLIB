(declare-fun a_ack!1634 () (_ BitVec 32))
(declare-fun b_ack!1629 () (_ BitVec 32))
(declare-fun c_ack!1630 () (_ BitVec 32))
(declare-fun d_ack!1631 () (_ BitVec 32))
(declare-fun e_ack!1632 () (_ BitVec 32))
(declare-fun f_ack!1633 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!1634 #x00000000)))
(assert (not (bvslt b_ack!1629 #x00000000)))
(assert (not (bvslt c_ack!1630 #x00000000)))
(assert (not (bvslt b_ack!1629 #x00000000)))
(assert (not (bvslt (bvadd a_ack!1634 c_ack!1630) b_ack!1629)))
(assert (= #x00000000 (bvand (bvadd a_ack!1634 b_ack!1629 c_ack!1630) #x00000001)))
(assert (not (bvslt a_ack!1634 #x00000000)))
(assert (not (bvslt b_ack!1629 #x00000000)))
(assert (not (bvslt c_ack!1630 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!1634 d_ack!1631) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!1629 e_ack!1632) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!1630 f_ack!1633) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!1631 e_ack!1632 f_ack!1633)))
(assert (= #x00000000 d_ack!1631))
(assert (= #x00000000 e_ack!1632))
(assert (= #x00000000 f_ack!1633))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!1634 b_ack!1629 c_ack!1630) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!1629 e_ack!1632) #x00000002)
                         (bvsdiv (bvsub c_ack!1630 f_ack!1633) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!1634 d_ack!1631) #x00000002)
                         (bvsdiv (bvadd c_ack!1630 f_ack!1633) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!1629 e_ack!1632) #x00000002)
                         (bvsdiv (bvsub c_ack!1630 f_ack!1633) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!1634 b_ack!1629) c_ack!1630)
                          #x00000002)
                  (bvsdiv (bvsub a_ack!1634 d_ack!1631) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!1634 d_ack!1631) #x00000002)
            (bvsdiv (bvadd b_ack!1629 e_ack!1632) #x00000002))))
(assert (let ((a!1 (bvult a_ack!1634
                  (bvsdiv (bvsub (bvadd a_ack!1634 b_ack!1629) c_ack!1630)
                          #x00000002))))
  (not a!1)))
(assert (let ((a!1 (= (bvsdiv (bvsub (bvadd a_ack!1634 b_ack!1629) c_ack!1630)
                      #x00000002)
              a_ack!1634)))
  (not a!1)))
(assert (let ((a!1 (= #x00000000
              (bvsdiv (bvsub (bvadd a_ack!1634 b_ack!1629) c_ack!1630)
                      #x00000002))))
  (not a!1)))
(assert (let ((a!1 (bvmul #x00000002
                  (bvsdiv (bvsub (bvadd a_ack!1634 b_ack!1629) c_ack!1630)
                          #x00000002))))
  (bvult a_ack!1634 a!1)))
(assert (not (bvule a_ack!1634 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1634)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1634)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!1634)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!1634)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)

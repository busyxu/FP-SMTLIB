(declare-fun a_ack!359 () (_ BitVec 32))
(declare-fun b_ack!357 () (_ BitVec 32))
(declare-fun c_ack!358 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!357 a_ack!359)))
(assert (not (bvslt a_ack!359 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!358) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!357))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!358))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!358))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!358)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!358))
                           (fp.abs ((_ to_fp 11 53) c_ack!358)))
                   (fp.abs ((_ to_fp 11 53) c_ack!358)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!358)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!358)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!358))
                           (fp.abs ((_ to_fp 11 53) c_ack!358)))
                   (fp.abs ((_ to_fp 11 53) c_ack!358)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!358)))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!358))
          (fp.abs ((_ to_fp 11 53) c_ack!358)))
  #x4012000000000000))

(check-sat)
(exit)

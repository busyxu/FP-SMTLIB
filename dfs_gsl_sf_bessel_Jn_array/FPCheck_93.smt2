(declare-fun a_ack!416 () (_ BitVec 32))
(declare-fun b_ack!414 () (_ BitVec 32))
(declare-fun c_ack!415 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!416 #x00000000)))
(assert (not (bvslt b_ack!414 a_ack!416)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!415) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!414) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!415) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!414)))
(assert (= #x00000000 b_ack!414))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!415))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!415))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!415))
       ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (not (bvslt b_ack!414 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!415) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!414))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!415))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!415)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!415))
                           (fp.abs ((_ to_fp 11 53) c_ack!415)))
                   (fp.abs ((_ to_fp 11 53) c_ack!415)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!415)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!415)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!415))
                           (fp.abs ((_ to_fp 11 53) c_ack!415)))
                   (fp.abs ((_ to_fp 11 53) c_ack!415)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!415)))))
(assert (bvsle a_ack!416 b_ack!414))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvsub b_ack!414 a_ack!416)))
       #x0000000000000319))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!415)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!414))
                           ((_ to_fp 11 53) c_ack!415))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FADD_OVERFLOW a!1 a!2)))

(check-sat)
(exit)

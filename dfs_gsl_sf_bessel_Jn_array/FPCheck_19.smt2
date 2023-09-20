(declare-fun a_ack!131 () (_ BitVec 32))
(declare-fun b_ack!129 () (_ BitVec 32))
(declare-fun c_ack!130 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!131 #x00000000)))
(assert (not (bvslt b_ack!129 a_ack!131)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!130) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!129) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!130) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!129)))
(assert (= #x00000000 b_ack!129))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!130))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!130))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!130))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!130))
       ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!130)))
                   (fp.abs ((_ to_fp 11 53) c_ack!130)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!130)))
                   (fp.abs ((_ to_fp 11 53) c_ack!130)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!130)))
                   (fp.abs ((_ to_fp 11 53) c_ack!130)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000)))
    #xbff0000000000000)))

(check-sat)
(exit)

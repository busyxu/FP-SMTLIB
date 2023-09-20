(declare-fun b_ack!918 () (_ BitVec 32))
(declare-fun a_ack!920 () (_ BitVec 32))
(declare-fun c_ack!919 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!918 #x00000000)))
(assert (not (bvslt a_ack!920 b_ack!918)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!919) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!919) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!918))
(assert (not (bvslt a_ack!920 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!919) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!919) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!920)))
(assert (not (= #x00000001 a_ack!920)))
(assert (= #x00000002 a_ack!920))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!919))
                   ((_ to_fp 11 53) c_ack!919))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe42f601a8c679b)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe42f601a8c679b)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FADD_ACCURACY
    a!2
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cc0000000000000)
            (fp.abs a!3))))))

(check-sat)
(exit)

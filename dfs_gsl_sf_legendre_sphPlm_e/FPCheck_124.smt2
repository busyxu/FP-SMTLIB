(declare-fun b_ack!660 () (_ BitVec 32))
(declare-fun a_ack!662 () (_ BitVec 32))
(declare-fun c_ack!661 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!660 #x00000000)))
(assert (not (bvslt a_ack!662 b_ack!660)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!661) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!661) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!660))
(assert (not (bvslt a_ack!662 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!661) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!661) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!662)))
(assert (not (= #x00000001 a_ack!662)))
(assert (not (= #x00000002 a_ack!662)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!661) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!661) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!662 #x000186a0))
(assert (bvsle #x00000002 a_ack!662))
(assert (bvsle #x00000003 a_ack!662))
(assert (not (bvsle #x00000004 a_ack!662)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!661)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) c_ack!661))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!661)
                                   ((_ to_fp 11 53) #x4014000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!661)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven a_ack!662)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4008000000000000))))))
  (FPCHECK_FMUL_OVERFLOW a!3 #x3cb0000000000000)))))

(check-sat)
(exit)

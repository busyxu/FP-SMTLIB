(declare-fun b_ack!75 () (_ BitVec 32))
(declare-fun a_ack!77 () (_ BitVec 32))
(declare-fun c_ack!76 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!75 #x00000000)))
(assert (not (bvslt a_ack!77 b_ack!75)))
(assert (= #x00000000 b_ack!75))
(assert (not (bvslt a_ack!77 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!76) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!76) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 a_ack!77))
(assert (bvsle #x00000000 a_ack!77))
(assert (not (bvsle #x00000001 a_ack!77)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!76)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!77)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.lt (fp.mul roundNearestTiesToEven
                          a!1
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!77)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3e50000000000000))))
  (not a!2))))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!77)
  #x3ff0000000000000))

(check-sat)
(exit)

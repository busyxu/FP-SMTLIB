(declare-fun c_ack!105 () (_ BitVec 64))
(declare-fun a_ack!106 () (_ BitVec 32))
(declare-fun b_ack!104 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!105) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!106 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!105) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!106)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!105) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!105) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!106)))
(assert (not (= #x00000001 a_ack!106)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!105) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!104))
                          ((_ to_fp 11 53) c_ack!105))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven (bvmul a_ack!106 a_ack!106))
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!104))
          (fp.abs ((_ to_fp 11 53) b_ack!104)))))

(check-sat)
(exit)

(declare-fun c_ack!559 () (_ BitVec 64))
(declare-fun a_ack!560 () (_ BitVec 32))
(declare-fun b_ack!558 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cosh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!559) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!560 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!559) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!560)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!559) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!559) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!560)))
(assert (not (= #x00000001 a_ack!560)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!559) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!558))
                          ((_ to_fp 11 53) c_ack!559))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul a_ack!560 a_ack!560))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!558))
                           (fp.abs ((_ to_fp 11 53) b_ack!558))))))
  (FPCHECK_FDIV_INVALID
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3ff0000000000000))
    (fp.mul roundNearestTiesToEven (CF_cosh c_ack!559) (CF_cosh c_ack!559)))))

(check-sat)
(exit)

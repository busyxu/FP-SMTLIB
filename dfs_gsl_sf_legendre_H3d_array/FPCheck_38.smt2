(declare-fun c_ack!210 () (_ BitVec 64))
(declare-fun a_ack!211 () (_ BitVec 32))
(declare-fun b_ack!209 () (_ BitVec 64))
(declare-fun CF_cosh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!210) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!211 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!210) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!211)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!210) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!210) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!211)))
(assert (not (= #x00000001 a_ack!211)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!210) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!209))
                          ((_ to_fp 11 53) c_ack!210))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul a_ack!211 a_ack!211))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!209))
                           (fp.abs ((_ to_fp 11 53) b_ack!209))))))
(let ((a!2 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3ff0000000000000))
                          (fp.mul roundNearestTiesToEven
                                  (CF_cosh c_ack!210)
                                  (CF_cosh c_ack!210)))
                  ((_ to_fp 11 53) #x3effbf7e4e8cc9d1))))
  (not a!2))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x408f400000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!211))
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!211)))

(check-sat)
(exit)

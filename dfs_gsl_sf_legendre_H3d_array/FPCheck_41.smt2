(declare-fun c_ack!228 () (_ BitVec 64))
(declare-fun a_ack!229 () (_ BitVec 32))
(declare-fun b_ack!227 () (_ BitVec 64))
(declare-fun CF_cosh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!228) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!229 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!228) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!229)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!228) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!228) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!229)))
(assert (not (= #x00000001 a_ack!229)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!228) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!227))
                          ((_ to_fp 11 53) c_ack!228))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul a_ack!229 a_ack!229))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!227))
                           (fp.abs ((_ to_fp 11 53) b_ack!227))))))
  (fp.lt (fp.div roundNearestTiesToEven
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 (fp.mul roundNearestTiesToEven
                         (CF_cosh c_ack!228)
                         (CF_cosh c_ack!228)))
         ((_ to_fp 11 53) #x3effbf7e4e8cc9d1))))
(assert (FPCHECK_FSUB_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven (bvsub #x00000000 a_ack!229))
  #x3fe0000000000000))

(check-sat)
(exit)

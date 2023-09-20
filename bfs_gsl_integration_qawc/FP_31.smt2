(declare-fun limit_ack!777 () (_ BitVec 64))
(declare-fun a_ack!778 () (_ BitVec 64))
(declare-fun b_ack!774 () (_ BitVec 64))
(declare-fun epsabs_ack!776 () (_ BitVec 64))
(declare-fun c_ack!775 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!777)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!774) ((_ to_fp 11 53) a_ack!778)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!776)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!775) ((_ to_fp 11 53) a_ack!778))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!775) ((_ to_fp 11 53) b_ack!774))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!775))
                   ((_ to_fp 11 53) a_ack!778))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!774))
                 ((_ to_fp 11 53) b_ack!774))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!775))
                   ((_ to_fp 11 53) a_ack!778))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!774)))
         ((_ to_fp 11 53) b_ack!774))))

(check-sat)
(exit)

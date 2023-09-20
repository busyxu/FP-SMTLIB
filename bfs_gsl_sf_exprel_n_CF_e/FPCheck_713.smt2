(declare-fun a_ack!2271 () (_ BitVec 64))
(declare-fun b_ack!2270 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2270) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!2270)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!2270)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!2271))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!2270)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!2271))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc024000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271))))))
  (not (fp.gt ((_ to_fp 11 53) b_ack!2270) a!1))))
(assert (bvslt #x00000001
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000002
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000003
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000004
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000005
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000006
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000007
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000008
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000009
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000000a
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000000b
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000000c
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000000d
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000000e
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000000f
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000010
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000011
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000012
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000013
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000014
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000015
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000016
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000017
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000018
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000019
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000001a
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000001b
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000001c
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000001d
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000001e
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000001f
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000020
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000021
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000022
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000023
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000024
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000025
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000026
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000027
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000028
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000029
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000002a
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000002b
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000002c
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000002d
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000002e
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x0000002f
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000030
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000031
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000032
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000033
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000034
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000035
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000036
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (bvslt #x00000037
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2271))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!2271)))))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffe
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!2271)))))
      (a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffd
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!2271)))))
      (a!5 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffc
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!2271)))))
      (a!7 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffb
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!2271)))))
      (a!8 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffa
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!2271)))))
      (a!10 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff9
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!11 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff8
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!13 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff7
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!14 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff6
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!16 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff5
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!17 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff4
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!19 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff3
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!20 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff2
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!22 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff1
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!23 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff0
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!25 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffef
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!26 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffee
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!28 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffed
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!29 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffec
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!31 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffeb
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!32 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffea
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!34 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffe9
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!35 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffe8
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!37 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffe7
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!38 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffe6
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!40 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffe5
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!41 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffe4
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!43 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffe3
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!44 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffe2
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!46 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffe1
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!47 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffe0
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!49 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffdf
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!50 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffde
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!52 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffdd
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!53 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffdc
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!55 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffdb
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!56 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffda
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!58 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffd9
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!59 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffd8
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!61 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffd7
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!62 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffd6
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!64 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffd5
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!65 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffd4
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!67 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffd3
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!68 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffd2
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!70 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffd1
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!71 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffd0
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!73 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffcf
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!74 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffce
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!76 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffcd
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!77 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffcc
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!79 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffcb
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!80 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffca
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271)))))
      (a!82 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffc9
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2271))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!2270)))
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) b_ack!2270)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) b_ack!2270)))
                   (fp.div roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.div roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!17
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.div roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!20
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.div roundNearestTiesToEven
                                    a!22
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!23
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!26
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!30 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!27
                            (fp.div roundNearestTiesToEven
                                    a!28
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!29
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!33 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!30
                            (fp.div roundNearestTiesToEven
                                    a!31
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!32
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!36 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!33
                            (fp.div roundNearestTiesToEven
                                    a!34
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!35
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!39 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!36
                            (fp.div roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!38
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!42 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!39
                            (fp.div roundNearestTiesToEven
                                    a!40
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!41
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!45 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!42
                            (fp.div roundNearestTiesToEven
                                    a!43
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!44
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!48 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!45
                            (fp.div roundNearestTiesToEven
                                    a!46
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!47
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!51 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!48
                            (fp.div roundNearestTiesToEven
                                    a!49
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!50
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!54 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!51
                            (fp.div roundNearestTiesToEven
                                    a!52
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!53
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!57 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!54
                            (fp.div roundNearestTiesToEven
                                    a!55
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!56
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!60 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!57
                            (fp.div roundNearestTiesToEven
                                    a!58
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!59
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!63 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!60
                            (fp.div roundNearestTiesToEven
                                    a!61
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!62
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!66 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!63
                            (fp.div roundNearestTiesToEven
                                    a!64
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!65
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!69 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!66
                            (fp.div roundNearestTiesToEven
                                    a!67
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!68
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!72 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!69
                            (fp.div roundNearestTiesToEven
                                    a!70
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!71
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!75 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!72
                            (fp.div roundNearestTiesToEven
                                    a!73
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!74
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!78 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!75
                            (fp.div roundNearestTiesToEven
                                    a!76
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!77
                            ((_ to_fp 11 53) b_ack!2270)))))
(let ((a!81 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!78
                            (fp.div roundNearestTiesToEven
                                    a!79
                                    ((_ to_fp 11 53) b_ack!2270)))
                    (fp.div roundNearestTiesToEven
                            a!80
                            ((_ to_fp 11 53) b_ack!2270)))))
  (FPCHECK_FMUL_ACCURACY
    a!81
    (fp.div roundNearestTiesToEven a!82 ((_ to_fp 11 53) b_ack!2270))))))))))))))))))))))))))))))))

(check-sat)
(exit)
